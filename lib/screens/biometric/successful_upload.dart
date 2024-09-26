import 'package:global_plug/utilities/imports/general_import.dart';

class BiometricSuccessfulUpload extends StatelessWidget {
  const BiometricSuccessfulUpload({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      CustomAppbar(height: 149.5.h),
      SizedBox(height: 100.0.h),
      SizedBox(
          width: 150,
          height: 160,
          child: SvgPicture.asset(AppImages.completed)),
      SizedBox(height: 65.0.h),
      Text('Uploaded Successfully',
          style: titleLarge.copyWith(
              fontWeight: FontWeight.w500, color: AppColors.twelve)),
      SizedBox(height: 36.0.h),
      SizedBox(
          width: 270.0.w,
          height: 88.0.h,
          child: Text(biometricSlipSubmitted,
              textAlign: TextAlign.center,
              style: bodyTwelve.copyWith(color: AppColors.textColor2))),
      const Spacer(),
      Padding(
          padding: const EdgeInsets.symmetric(horizontal: 21.0),
          child: AppButton(
              onTap: () {
                Get.offAllNamed(AppRoutes.nigerianPersonalInfo);
              },
              isOutline: false,
              hasElevation: true,
              text: 'Back to home')),
      const Spacer()
    ]));
  }
}
