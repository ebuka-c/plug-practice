import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ApplicationController extends GetxController {
  //nigeria passport info
  final emailController = TextEditingController();
  final ninController = TextEditingController();
  final passportNumController = TextEditingController();
  final titleController = TextEditingController();
  final surnameNumController = TextEditingController();
  final firstNameController = TextEditingController();
  final dobController = TextEditingController();
  final placeOfBirthController = TextEditingController();
  final maritalStatus = TextEditingController();
  final occupationController = TextEditingController();
  final maidenNameController = TextEditingController();

  //uk contact info
  final phoneNumController = TextEditingController();
  final addressLine1 = TextEditingController();
  final addressLine2 = TextEditingController();
  final city = TextEditingController();
  final country = TextEditingController();

  //nigeria passport info
  final stateOfOrigin = TextEditingController();
  final homeTown = TextEditingController();
  final ngAddressLine1 = TextEditingController();
  final stateReligion = TextEditingController();
  final localGovtArea = TextEditingController();
  final cityTown = TextEditingController();
  final postalCode = TextEditingController();

  //DRAWER
  int selectedTile = -1.obs;

  //NEXT OF KIN INFO CONTROLLERS
  final nextOfKinName = TextEditingController();
  final relationship = TextEditingController();
  final nextOfKinAddress = TextEditingController();
  final nextOfKinState = TextEditingController();
  final nextOfKinLGA = TextEditingController();
  final kinCityTown = TextEditingController();
  final kinPostalCode = TextEditingController();
  final nextOfKinPhone = TextEditingController();

  void clearForm() {
    emailController.clear();
    ninController.clear();
    passportNumController.clear();
    titleController.clear();
    surnameNumController.clear();
    firstNameController.clear();
    dobController.clear();
    placeOfBirthController.clear();
    maritalStatus.clear();
    occupationController.clear();
    maidenNameController.clear();
  }

  void clearUkContactForm() {
    phoneNumController.clear();
    addressLine1.clear();
    addressLine2.clear();
    city.clear();
    country.clear();
  }

  void clearNigeriaContactForm() {
    stateOfOrigin.clear();
    homeTown.clear();
    ngAddressLine1.clear();
    stateReligion.clear();
    localGovtArea.clear();
    cityTown.clear();
    postalCode.clear();
  }

  void clearNextOfKinForm() {
    nextOfKinName.clear();
    nextOfKinAddress.clear();
    relationship.clear();
    nextOfKinLGA.clear();
    nextOfKinState.clear();
    kinCityTown.clear();
    cityTown.clear();
    kinPostalCode.clear();
    nextOfKinPhone.clear();
  }

  RxInt qtyCounter = 1.obs;
  RxInt totalAmount = 150.obs;

  incrQty() {
    qtyCounter++;
    // qtyCounter * totalAmount.toInt();
  }

  decrQty() {
    if (qtyCounter > 1) {
      qtyCounter--;
      // qtyCounter * totalAmount.toInt();
    }
    return;
  }

//PAYMENT SCREEN VALUES

  //TextEditingControllers
  final cardNumber = TextEditingController();
  final cardName = TextEditingController();
  final cvv = TextEditingController();
  final expiryDate = TextEditingController();

  //radio selectable group value
  RxInt schGenderValue = 0.obs;
  RxInt schEmployment = 0.obs;

  //radio list tile group value
  RxInt radioValue = 1.obs;

  RxBool rememberMe = false.obs;

  //for payment options visibility
  RxBool cardPaymentVisible = true.obs;
  RxBool isBankTransferVisible = false.obs;
  RxBool isStripeVisible = false.obs;
  RxBool isFISVisible = false.obs;

  //
  onBoxChecked(value) {
    rememberMe = value;
  }

  late FocusNode myFocusNode;

  @override
  void onInit() {
    super.onInit();

    myFocusNode = FocusNode();

    // Add a listener to the FocusNode
    myFocusNode.addListener(() {
      if (!myFocusNode.hasFocus) {
        // When the TextFormField loses focus, set cursor to the beginning
        cardName.selection =
            TextSelection.fromPosition(const TextPosition(offset: 0));
      }
    });
  }

  @override
  void dispose() {
    myFocusNode.dispose();
    cardName.dispose();
    super.dispose();
  }
}
