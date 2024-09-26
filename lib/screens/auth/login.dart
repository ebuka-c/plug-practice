import 'package:global_plug/utilities/imports/general_import.dart';

class LoginScreen extends GetView<AuthController> {
  LoginScreen({super.key});

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
                            onTap: () =>
                                Get.offAllNamed(AppRoutes.signUpScreen),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text('Create account',
                                      style: titleMid.copyWith(
                                          color: AppColors.primaryColor)),
                                  SizedBox(width: 3.0.w),
                                  const Icon(Icons.arrow_forward_sharp,
                                      color: AppColors.primaryColor)
                                ])))
                  ]),
              body: SingleChildScrollView(
                  physics: const NeverScrollableScrollPhysics(),
                  child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.0.w, vertical: 80.0.h),
                      child: Form(
                          key: _formKey,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Login', style: titleLarge),
                                SizedBox(height: 25.0.h),
                                AuthTextField(
                                    controller: controller.emailController,
                                    labelText: 'Email'),
                                SizedBox(height: 31.0.h),
                                Obx(() => AuthTextField(
                                    controller: controller.passwordController,
                                    labelText: 'Password',
                                    obscureText:
                                        controller.pswdLoginObscure.value
                                            ? true
                                            : false,
                                    suffixIcon: GestureDetector(
                                        onTap: () {
                                          controller.pswdLoginObscure.value =
                                              !controller
                                                  .pswdLoginObscure.value;
                                        },
                                        child: controller.pswdLoginObscure.value
                                            ? const Icon(
                                                Icons.visibility_off_outlined,
                                                color: AppColors.textColor)
                                            : const Icon(
                                                Icons.visibility_outlined,
                                                color: AppColors.textColor)))),
                                SizedBox(height: 31.0.h),
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(children: [
                                        Transform.scale(
                                            scale: 0.7,
                                            child: SizedBox(
                                                height: 30,
                                                width: 30,
                                                child: Obx(() => Checkbox(
                                                    checkColor:
                                                        AppColors.primaryColor,
                                                    value: controller
                                                        .rememberMe.value,
                                                    onChanged: (value) {
                                                      controller.rememberMe
                                                          .value = value!;
                                                    })))),
                                        Text("Remember Me",
                                            style: bodyTen.copyWith(
                                                color: AppColors.primaryColor))
                                      ]),
                                      Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8.0),
                                          child: GestureDetector(
                                              onTap: () => Get.toNamed(
                                                  AppRoutes.forgotPswdScreen),
                                              child: Text('Forgot Password?',
                                                  style: bodyEleven.copyWith(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: AppColors
                                                          .primaryColor))))
                                    ]),
                                SizedBox(height: 150.0.h),
                                AppButton(
                                    onTap: () {
                                      // _formKey.currentState!.validate();
                                      controller.signInUser();
                                    },
                                    text: 'Log In',
                                    isOutline: false,
                                    hasElevation: true),
                                SizedBox(height: 50.0.h),
                                Center(
                                    child: SizedBox(
                                        width: 95.0.w,
                                        height: 58.0.h,
                                        child: Image.asset(AppImages.logoImg))),
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
                                              color: AppColors.opacityText,
                                              fontWeight: FontWeight.w500),
                                          children: [
                                            TextSpan(
                                                text: 'terms of use',
                                                style: bodyEleven.copyWith(
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w700,
                                                    color: AppColors.textColor),
                                                recognizer:
                                                    TapGestureRecognizer()
                                                      ..onTap = () {
                                                        debugPrint(
                                                            'Terms of use"');
                                                      }),
                                            const TextSpan(text: ' and '),
                                            TextSpan(
                                                text: 'privacy policy',
                                                style: bodyEleven.copyWith(
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w700,
                                                    color: AppColors.textColor),
                                                recognizer:
                                                    TapGestureRecognizer()
                                                      ..onTap = () {
                                                        debugPrint(
                                                            'privacy policy');
                                                      })
                                          ])),
                                  //
                                ))
                              ])))))),
    );
  }
}
/**
 *  and 
 */