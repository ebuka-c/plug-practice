import 'package:global_plug/utilities/imports/general_import.dart';

class LoginOrSignup extends StatelessWidget {
  const LoginOrSignup({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AppImages.passportbg), fit: BoxFit.cover)),
        child: Scaffold(
            backgroundColor: AppColors.transparent,
            body: Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 80.0.h),
                child: Column(children: [
                  Image.asset(AppImages.logoImg2,
                      width: 175.0.w, height: 175.0.w),
                  const Spacer(),
                  AppButton(
                      onTap: () {
                        Get.toNamed(AppRoutes.signUpScreen);
                      },
                      text: 'Sign Up',
                      isOutline: false,
                      hasElevation: false),
                  SizedBox(height: 16.0.h),
                  AppButton(
                      onTap: () {
                        Get.toNamed(AppRoutes.loginScreen);
                      },
                      text: 'Login',
                      isOutline: true,
                      hasElevation: false)
                ]))));
  }
}
