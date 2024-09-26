import 'package:global_plug/utilities/imports/general_import.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({super.key});

  final currentPage = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AppImages.decorativeBg), fit: BoxFit.cover)),
      child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 100.0.h),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            const Spacer(),
            Image.asset(AppImages.logoImg2, width: 185, height: 185),
            const Spacer(),
            AppButton(
                onTap: () => Get.toNamed(AppRoutes.loginOrSignup),
                text: 'Get Started',
                isOutline: false,
                hasElevation: true),
            SizedBox(height: 37.0.h),
            SizedBox(
                width: 229.0.w,
                child: Text(
                    textAlign: TextAlign.center,
                    'Streamline your Identity, Immigration & Consular Services with ease',
                    style: bodyEleven.copyWith(
                        color: AppColors.opacityText,
                        fontWeight: FontWeight.w500)))
            //
          ])),
    ));
  }
}
