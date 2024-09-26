import 'package:global_plug/utilities/imports/general_import.dart';

void logOutDialog(context) {
  showDialog(
      context: context,
      builder: (context) => AlertDialog(
          backgroundColor: AppColors.colorWhite,
          content: Stack(children: [
            SizedBox(
                width: 314.0.w,
                height: 238.0.h,
                child: Padding(
                    padding: EdgeInsets.fromLTRB(34.0.w, 49.0.h, 34.0.w, 0),
                    child: Column(children: [
                      Text('Are you sure you want to Log out?',
                          textAlign: TextAlign.center,
                          style: bodyIntermediate.copyWith(
                              fontWeight: FontWeight.w500)),
                      SizedBox(height: 15.0.h),
                      SizedBox(
                          width: 188.0.w,
                          child: Text(
                              'If you Log off, you will need to enter your Password again',
                              textAlign: TextAlign.center,
                              style: bodyEight.copyWith(
                                  fontWeight: FontWeight.w300,
                                  color: AppColors.opacityText))),
                      SizedBox(height: 30.0.h),
                      AppButton(
                          onTap: () {
                            Get.offAllNamed(AppRoutes.loginScreen);
                          },
                          isOutline: false,
                          hasElevation: true,
                          text: 'Log out')
                    ]))),
            Row(mainAxisAlignment: MainAxisAlignment.end, children: [
              Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: GestureDetector(
                      onTap: () => Get.back(),
                      child: SvgPicture.asset(AppImages.closeIcon,
                          width: 20, height: 20))),
            ])
          ])));
}
