import 'package:global_plug/utilities/imports/general_import.dart';

class AuthOtpScreen extends GetView<AuthController> {
  const AuthOtpScreen({super.key});

  final correctPin = 1234;

  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey<FormState>();

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
                child: Form(
                  key: formKey,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Please check your email',
                            style: titleLarge.copyWith(
                                fontWeight: FontWeight.w500)),
                        SizedBox(height: 30.0.h),
                        SizedBox(
                            width: double.infinity,
                            height: 50,
                            child: Text(
                                'We\'ve sent a code to skybabyui@gmail.com',
                                style: bodyIntermediate.copyWith(
                                    color: AppColors.opacityText))),
                        // input field
                        Container(
                            padding: EdgeInsets.symmetric(horizontal: 10.0.w),
                            width: double.infinity,
                            child: Pinput(
                                length: 4,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                pinputAutovalidateMode:
                                    PinputAutovalidateMode.onSubmit,
                                validator: (value) {
                                  return value == correctPin.toString()
                                      ? null
                                      : 'Enter the correct pin!';
                                },
                                defaultPinTheme: PinTheme(
                                    height: 57.0.h,
                                    width: 66.0.w,
                                    textStyle: titleLarge.copyWith(
                                        color: AppColors.colorBlack,
                                        fontWeight: FontWeight.w600),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        border: Border.all(
                                            color: AppColors.opacityText))))),

                        SizedBox(height: 23.0.h),
                        Center(
                            child: RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                    text: 'Didn\'t get a code? ',
                                    style: bodyIntermediate.copyWith(
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Poppins',
                                        color: AppColors.textColor),
                                    children: [
                                      TextSpan(
                                          text: 'Click to resend.',
                                          style: bodyIntermediate.copyWith(
                                              fontFamily: 'Poppins',
                                              color: AppColors.primaryColor,
                                              fontWeight: FontWeight.w600),
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {
                                              debugPrint('resend');
                                            })
                                    ]))),
                        //
                        SizedBox(height: 140.0.h),
                        AppButton(
                            onTap: () {
                              final validation =
                                  formKey.currentState!.validate();
                              if (validation) {
                                Get.toNamed(AppRoutes.resetPassword);
                              }
                            },
                            text: 'Verify',
                            isOutline: false,
                            hasElevation: true),
                        SizedBox(height: 30.0.h),
                        Center(
                            child: RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                    text: 'Send code again? ',
                                    style: bodyIntermediate.copyWith(
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Poppins',
                                        color: AppColors.primaryColor),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        debugPrint('resend');
                                      },
                                    children: [
                                      TextSpan(
                                          text: '00:20',
                                          style: bodyIntermediate.copyWith(
                                              color: AppColors.opacityText,
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w500))
                                    ]))),
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
                                      fontWeight: FontWeight.w700,
                                      fontFamily: 'Poppins',
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
                                          }),
                                  ])),
                        ),
                      ]),
                )),
          )),
    );
  }
}
