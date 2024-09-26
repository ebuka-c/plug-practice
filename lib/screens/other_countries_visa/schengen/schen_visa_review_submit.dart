import 'package:global_plug/utilities/imports/general_import.dart';

class SchenVisaReviewSubmit extends StatelessWidget {
  const SchenVisaReviewSubmit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: AppColors.colorWhite,
            foregroundColor: AppColors.primaryColor,
            elevation: 0,
            title: Text('Review & submit',
                style: titleLarge.copyWith(color: AppColors.primaryColor))),
        body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
                padding: EdgeInsets.fromLTRB(20.0.h, 27.0.w, 20.0.h, 0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 30.0.h),
                      ReviewInfo(
                          title: 'Personal Information',
                          dataList: personalInfo,
                          onEditTap: () {}),
                      SizedBox(height: 32.0.h),
                      ReviewInfo(
                          title: 'UK Contact Information',
                          dataList: ukContactInfo,
                          onEditTap: () {}),
                      SizedBox(height: 32.0.h),
                      ReviewInfo(
                          title: 'Nigeria Contact Information',
                          dataList: nigContactInfo,
                          onEditTap: () {}),
                      SizedBox(height: 32.0.h),
                      ReviewInfo(
                          title: 'Next of Kin Information',
                          dataList: nextOfKinInfo,
                          onEditTap: () {}),
                      SizedBox(height: 64.69.h),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AppButton(
                                onTap: () {
                                  Get.back();
                                },
                                text: 'Back',
                                btnColor: AppColors.colorWhite,
                                textStyle: titleMid.copyWith(
                                    color: AppColors.opacityText),
                                height: 51.0.h,
                                width: 151.0.w,
                                isOutline: true,
                                hasElevation: true,
                                shadowColor: AppColors.greyColor,
                                radius: 48,
                                borderColor: AppColors.buttonBorder2),
                            SizedBox(width: 19.0.w),
                            AppButton(
                                onTap: () {
                                  Get.toNamed(AppRoutes.responseSubmitted);
                                },
                                text: 'Submit',
                                textStyle: titleMid.copyWith(
                                    color: AppColors.colorWhite),
                                height: 51.0.h,
                                width: 151.0.w,
                                isOutline: false,
                                hasElevation: true,
                                radius: 48)
                          ]),
                      SizedBox(height: 35.0.h),
                    ]))));
  }
}
