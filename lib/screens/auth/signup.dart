import 'package:global_plug/utilities/imports/general_import.dart';

class SignUpScreen extends GetView<AuthController> {
  SignUpScreen({super.key});

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(AppImages.gpsbg), fit: BoxFit.cover)),
          child: Scaffold(
              backgroundColor: AppColors.fortyPercentWhite,
              appBar: AppBar(
                  backgroundColor: AppColors.transparent,
                  automaticallyImplyLeading: false,
                  foregroundColor: AppColors.primaryColor,
                  elevation: 0,
                  actions: [
                    Padding(
                        padding: EdgeInsets.only(right: 20.0.w),
                        child: GestureDetector(
                            onTap: () => Get.offAllNamed(AppRoutes.loginScreen),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text('Login',
                                      style: titleMid.copyWith(
                                          color: AppColors.primaryColor)),
                                  SizedBox(width: 3.0.w),
                                  const Icon(Icons.arrow_forward_sharp,
                                      color: AppColors.primaryColor)
                                ])))
                  ]),
              body: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.0.w, vertical: 40.0.h),
                      child: Form(
                          key: _formKey,
                          child: Obx(() => Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Create Account', style: titleLarge),
                                    SizedBox(height: 25.0.h),
                                    //full name
                                    AuthTextField(
                                        controller: controller.nameController,
                                        keyboardType: TextInputType.name,
                                        textCapitalization:
                                            TextCapitalization.words,
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Please enter your full name';
                                          }
                                          return null;
                                        },
                                        labelText: 'Full Name'),
                                    SizedBox(height: 31.0.h),
                                    //email
                                    AuthTextField(
                                        controller: controller.emailController,
                                        keyboardType:
                                            TextInputType.emailAddress,
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Email field cannnot be empty';
                                          } else if (!GetUtils.isEmail(value)) {
                                            return 'Enter a valid email address';
                                          }
                                          return null;
                                        },
                                        labelText: 'Email'),
                                    SizedBox(height: 31.0.h),
                                    //password
                                    AuthTextField(
                                      controller: controller.passwordController,
                                      labelText: 'Password',
                                      keyboardType:
                                          TextInputType.visiblePassword,
                                      obscureText:
                                          controller.pswdSignUpObscure.value
                                              ? true
                                              : false,
                                      suffixIcon: GestureDetector(
                                          onTap: () {
                                            controller.pswdSignUpObscure.value =
                                                !controller
                                                    .pswdSignUpObscure.value;
                                          },
                                          child: controller
                                                  .pswdSignUpObscure.value
                                              ? const Icon(
                                                  Icons.visibility_off_outlined,
                                                  color: AppColors.textColor)
                                              : const Icon(
                                                  Icons.visibility_outlined,
                                                  color: AppColors.textColor)),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Password field cannnot be empty';
                                        }
                                        return null;
                                      },
                                    ),
                                    SizedBox(height: 31.0.h),
                                    //confirm password
                                    AuthTextField(
                                      controller:
                                          controller.confirmPasswordController,
                                      labelText: 'Confirm Password',
                                      keyboardType:
                                          TextInputType.visiblePassword,
                                      obscureText: controller
                                              .pswdSignUpConfirmObscure.value
                                          ? true
                                          : false,
                                      suffixIcon: GestureDetector(
                                          onTap: () {
                                            controller.pswdSignUpConfirmObscure
                                                    .value =
                                                !controller
                                                    .pswdSignUpConfirmObscure
                                                    .value;
                                          },
                                          child: controller
                                                  .pswdSignUpConfirmObscure
                                                  .value
                                              ? const Icon(
                                                  Icons.visibility_off_outlined,
                                                  color: AppColors.textColor)
                                              : const Icon(
                                                  Icons.visibility_outlined,
                                                  color: AppColors.textColor)),
                                      validator: (value) {
                                        if (value == null || value.isEmpty) {
                                          return 'Field cannnot be empty';
                                        }
                                        return null;
                                      },
                                    ),
                                    SizedBox(height: 100.0.h),
                                    AppButton(
                                        onTap: () {
                                          if (controller
                                                  .passwordController.text ==
                                              controller
                                                  .confirmNewPasswordController
                                                  .text) {
                                            controller.signUpUser('Ebuka',
                                                'ebuka@gmail.com', 'mypwd');
                                            // print('sign up called');
                                          }
                                          // controller.printName();
                                          // _formKey.currentState!.validate();
                                          // Get.offNamed(AppRoutes.loginScreen);
                                        },
                                        text: 'Sign Up',
                                        isOutline: false,
                                        hasElevation: true),
                                    SizedBox(height: 15.0.h),
                                    Center(
                                        child: RichText(
                                            text: TextSpan(
                                                text:
                                                    'Already have an account? click on ',
                                                style: bodyEleven.copyWith(
                                                    fontWeight: FontWeight.w500,
                                                    color:
                                                        AppColors.opacityText),
                                                children: [
                                          TextSpan(
                                              text: 'Login',
                                              style: bodyEleven.copyWith(
                                                  fontWeight: FontWeight.w600,
                                                  color:
                                                      AppColors.primaryColor),
                                              recognizer: TapGestureRecognizer()
                                                ..onTap = () {
                                                  Get.toNamed(
                                                      AppRoutes.loginScreen);
                                                })
                                        ]))),

                                    SizedBox(height: 35.0.h),
                                    Center(
                                        child: SizedBox(
                                            width: 95.0.w,
                                            height: 58.0.h,
                                            child: Image.asset(
                                                AppImages.logoImg))),
                                    SizedBox(height: 15.0.h),
                                    Center(
                                        child: SizedBox(
                                            width: 220.0.w,
                                            child: RichText(
                                                textAlign: TextAlign.center,
                                                text: TextSpan(
                                                    text:
                                                        'By signing up, you agree to our ',
                                                    style: bodyEleven.copyWith(
                                                        fontFamily: 'Poppins',
                                                        color: AppColors
                                                            .opacityText,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                    children: [
                                                      TextSpan(
                                                          text: 'terms of use',
                                                          style: bodyEleven
                                                              .copyWith(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w700,
                                                                  color: AppColors
                                                                      .textColor),
                                                          recognizer:
                                                              TapGestureRecognizer()
                                                                ..onTap = () {
                                                                  debugPrint(
                                                                      'Terms of use"');
                                                                }),
                                                      const TextSpan(
                                                          text: ' and '),
                                                      TextSpan(
                                                          text:
                                                              'privacy policy',
                                                          style: bodyEleven
                                                              .copyWith(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w700,
                                                                  color: AppColors
                                                                      .textColor),
                                                          recognizer:
                                                              TapGestureRecognizer()
                                                                ..onTap = () {
                                                                  debugPrint(
                                                                      'privacy policy');
                                                                })
                                                    ]))))
                                  ]))))))),
    );
  }
}
