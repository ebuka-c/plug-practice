import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:global_plug/services/api/endpoints.dart';
import 'package:global_plug/services/api/helper_methods.dart';

import '../constants/locals.dart';
import '../models/auth/user_model.dart';
import '../page_routes/route_name.dart';
import '../utilities/imports/flutter_import.dart';

class AuthController extends GetxController {
  final isLoading = false.obs;

  // object
  final userData = UserModel().obs;

  // lists

  void goToHome() {
    //
    Get.toNamed(AppRoutes.nigerianPersonalInfo);
  }

  void goToLogin() {
    //
    Get.toNamed(AppRoutes.loginScreen);
  }

  void printName() {
    print('my username');
  }

  Future<void> signUpUser() async {
    isLoading.value = true;

    var name = nameController.text.trim();
    var email = emailController.text.trim();
    var password = passwordController.text.trim();

    var payload =
        jsonEncode({"name": name, "email": email, "password": password});

    try {
      final response = await APIMethods.postData(
        url: ApiEndpoints.register,
        body: payload,
        withHeader: false,
      );

      var body = response.body;
      if (kDebugMode) print("STATUS: ${response.statusCode}");
      if (kDebugMode) print("SIGN_UP: $body");

      if (response.statusCode == 200) {
        passwordController.clear();
        confirmNewPasswordController.clear();
        // final token = body["data"]["access_token"] as String;
        // final refreshToken = body["data"]["refresh_token"] as String;

        // if (kDebugMode) print("USER TOKEN: $token");
        // if (kDebugMode) print("USER REFRESH-TOKEN: $refreshToken");

        // await getStorageInstance.write(TOKEN, token);
        // await getStorageInstance.write(REFRESH_TOKEN, refreshToken);
        await getStorageInstance.write(NAME, name);
        await getStorageInstance.write(EMAIL, email);
        await getStorageInstance.write(PASSWORD, password);

        // String? retrievedToken = getStorageInstance.read(TOKEN);

        userData.value = UserModel.fromJson(body['full_name']);
        userData.refresh();
        if (kDebugMode) print("USER DATA: $userData");

        goToLogin();

        isLoading.value = false;
      } else {
        if (kDebugMode) print(body["message"]);
        // appSnackbar(body["message"]);
        isLoading.value = false;
      }
    } catch (error) {
      isLoading.value = false;
      throw Exception(error);
    }
  }

  Future<void> signInUser() async {
    isLoading.value = true;

    var email = emailController.text.trim();
    var password = passwordController.text.trim();

    var payload = jsonEncode({"email": email, "password": password});

    try {
      final response = await APIMethods.postData(
        url: ApiEndpoints.login,
        body: payload,
        withHeader: false,
      );

      var body = response.body;
      if (kDebugMode) print("STATUS: ${response.statusCode}");
      if (kDebugMode) print("LOGIN: $body");

      if (response.statusCode == 200) {
        passwordController.clear();
        final token = body["data"]["access_token"] as String;
        final refreshToken = body["data"]["refresh_token"] as String;

        if (kDebugMode) print("USER TOKEN: $token");
        if (kDebugMode) print("USER REFRESH-TOKEN: $refreshToken");

        await getStorageInstance.write(TOKEN, token);
        await getStorageInstance.write(REFRESH_TOKEN, refreshToken);
        await getStorageInstance.write(EMAIL, email);
        await getStorageInstance.write(PASSWORD, password);

        // String? retrievedToken = getStorageInstance.read(TOKEN);

        userData.value = UserModel.fromJson(body["data"]["user"]);
        userData.refresh();
        if (kDebugMode) print("USER DATA: $userData");

        // await goToHome();

        isLoading.value = false;
      } else {
        if (kDebugMode) print(body["message"]);
        // appSnackbar(body["message"]);
        isLoading.value = false;
      }
    } catch (error) {
      isLoading.value = false;
      throw Exception(error);
    }
  }

  Future<void> startPasswordReset(
      {required String oldPassword, required String newPassword}) async {
    isLoading.value = true;

    var email = emailController.text.trim();

    var payload = jsonEncode({"email": email});

    try {
      final response = await APIMethods.postData(
        url: ApiEndpoints.pwdResetResquest,
        body: payload,
        withHeader: false,
      );

      var body = response.body;
      if (kDebugMode) print("STATUS: ${response.statusCode}");
      if (kDebugMode) print("START RESET PASSWORD: $body");

      if (response.statusCode == 200) {
      } else {
        if (response.statusCode == 401) {
          // appSnackbar(body["detail"]);
        }
        isLoading.value = false;
        // appSnackbar(body["message"]);
      }
    } catch (error) {
      isLoading.value = false;
      throw Exception(error);
    }
  }

  Future<void> completePasswordReset(
      {required String otp, required String newPassword}) async {
    isLoading.value = true;

    var email = emailController.text.trim();

    var payload = jsonEncode({
      "email": email,
      "new_password": newPassword,
      "otp": otp,
    });

    try {
      final response = await APIMethods.postData(
        url: ApiEndpoints.setNewPassword,
        body: payload,
        withHeader: false,
      );

      var body = response.body;
      if (kDebugMode) print("STATUS: ${response.statusCode}");
      if (kDebugMode) print("COMPLETE RESET PASSWORD: $body");

      if (response.statusCode == 200) {
        //
      } else {
        isLoading.value = false;
        // appSnackbar(body["message"]);
      }
    } catch (error) {
      isLoading.value = false;
      throw Exception(error);
    }
  }

  Future<void> verifyPasswordResetToken(String otp) async {
    isLoading.value = true;

    var email = emailController.text.trim();

    var payload = jsonEncode({"otp": otp, "email": email});

    try {
      final response = await APIMethods.postData(
        url: ApiEndpoints.verifyPswdResetToken,
        body: payload,
        withHeader: false,
      );

      var body = response.body;
      if (kDebugMode) print("STATUS: ${response.statusCode}");
      if (kDebugMode) print("VERIFY PSWD RESET TOKEN: $body");

      if (response.statusCode == 200) {
        //
      } else {
        isLoading.value = false;
        // appSnackbar(body["message"]);
      }
    } catch (error) {
      isLoading.value = false;
      throw Exception(error);
    }
  }

  Future<void> logout() async {
    isLoading.value = true;
    await getStorageInstance.erase();
    // appSnackbar("Logout successful", isError: false);
    isLoading.value = false;
    goToLogin();
  }

  //
  RxBool pswdLoginObscure = true.obs;
  RxBool pswdSignUpObscure = true.obs;
  RxBool pswdSignUpConfirmObscure = true.obs;
  RxBool rememberMe = false.obs;

// PROFILE COMPLETION TEXTEDITING CONTROLLERS
  TextEditingController fullNameController = TextEditingController();
  //controller for date of birth field
  TextEditingController dobController = TextEditingController();

  TextEditingController phoneNumController = TextEditingController();
  TextEditingController nationalityController = TextEditingController();
  TextEditingController addressController = TextEditingController();

//
  onBoxChecked(value) {
    rememberMe = value;
  }

  //complete profile
  final userEmailController = TextEditingController();

  //sign up / sign in
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final newPasswordController = TextEditingController();
  final confirmNewPasswordController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmNewPasswordController.dispose();
    confirmPasswordController.dispose();
    newPasswordController.dispose();
    super.dispose();
  }
}
