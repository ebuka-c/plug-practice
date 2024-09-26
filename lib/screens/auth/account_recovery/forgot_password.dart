import 'package:global_plug/utilities/imports/general_import.dart';

class ForgotPassword extends GetView<AuthController> {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AppImages.gpsbg), fit: BoxFit.cover)),
      child: Scaffold(
          backgroundColor: AppColors.fortyPercentWhite,
          extendBodyBehindAppBar: true,
          appBar: AppBar(
              backgroundColor: AppColors.transparent,
              elevation: 0,
              foregroundColor: AppColors.primaryColor),
          body: SingleChildScrollView(
            child: Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 100.0.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Forgotten Password?',
                          style:
                              titleLarge.copyWith(fontWeight: FontWeight.w500)),
                      SizedBox(height: 30.0.h),
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: Text(
                            'Don\'t worry!, please enter the email address associated with your account',
                            style: bodyIntermediate.copyWith(
                                color: AppColors.opacityText)),
                      ),
                      SizedBox(height: 40.0.h),
                      //email
                      AuthTextField(
                          controller: controller.emailController,
                          keyboardType: TextInputType.emailAddress,
                          labelText: 'Email'),
                      SizedBox(height: 240.0.h),
                      AppButton(
                          onTap: () {
                            Get.toNamed(AppRoutes.authOtpScreen);
                          },
                          text: 'Send Code',
                          isOutline: false,
                          hasElevation: true),
                      SizedBox(height: 30.0.h),
                      Center(
                          child: GestureDetector(
                              onTap: () =>
                                  Get.offAllNamed(AppRoutes.loginScreen),
                              child: Text('Back to Login',
                                  style: bodyLarge.copyWith(
                                      color: AppColors.primaryColor,
                                      fontWeight: FontWeight.w500)))),
                      SizedBox(height: 50.0.h),
                      Center(
                          child: SizedBox(
                              width: 95.0.w,
                              height: 58.0.h,
                              child: Image.asset(AppImages.logoImg))),
                      SizedBox(height: 15.0.h),

                      Center(
                          child: RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                  text: 'Terms of Use',
                                  style: bodyEleven.copyWith(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w700,
                                      color: AppColors.textColor),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      debugPrint('Terms of use"');
                                    },
                                  children: [
                                    TextSpan(
                                        text: ' and ',
                                        style: bodyEleven.copyWith(
                                            fontFamily: 'Poppins',
                                            color: AppColors.opacityText,
                                            fontWeight: FontWeight.w500)),
                                    TextSpan(
                                        text: 'Privacy Policy',
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            debugPrint('privacy policy');
                                          })
                                  ])))
                    ])),
          )),
    );
  }
}
