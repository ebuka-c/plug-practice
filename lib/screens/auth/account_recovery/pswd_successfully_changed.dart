import 'package:global_plug/utilities/imports/general_import.dart';

class PswdSuccessfullyChanged extends GetView<AuthController> {
  const PswdSuccessfullyChanged({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AppImages.gpsbg), fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: AppColors.fortyPercentWhite,
          body: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 130.0.h),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                        child: SizedBox(
                            height: 200.0.h,
                            width: 200.0.h,
                            child: SvgPicture.asset(AppImages.completed))),
                    SizedBox(height: 49.51.h),
                    Center(
                        child: SizedBox(
                            width: 250,
                            child: Text(
                                'Your password has been changed successfully',
                                textAlign: TextAlign.center,
                                style: bodyIntermediate.copyWith(
                                    color: AppColors.opacityText)))),
                    const Spacer(),
                    AppButton(
                        onTap: () {
                          Get.offAllNamed(AppRoutes.loginScreen);
                        },
                        text: 'Back to Login',
                        isOutline: false,
                        hasElevation: true),
                    SizedBox(height: 30.0.h),
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
        ));
  }
}
