import 'package:global_plug/utilities/imports/general_import.dart';

class NigeriaContactInfo extends GetView<ApplicationController> {
  const NigeriaContactInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
          CustomScrollView(slivers: [
            sliverAppBar,
            SliverList(
                delegate: SliverChildListDelegate([
              Padding(
                  padding: EdgeInsets.fromLTRB(24.0.w, 20.0.h, 24.0.w, 100.0.h),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              GestureDetector(
                                  onTap: () {},
                                  child: Text('Save & continue',
                                      style: bodyIntermediate.copyWith(
                                          color: AppColors.primaryColor)))
                            ]),
                        SizedBox(height: 28.0.h),
                        Text('Nigeria Passport',
                            style: titleLarge.copyWith(
                                color: AppColors.primaryColor)),
                        SizedBox(height: 10.0.h),
                        SizedBox(
                          height: 15,
                          child: Text(
                              'Complete the form to start your Passport application process',
                              style: bodyTen.copyWith(
                                  color: AppColors.opacityText,
                                  fontWeight: FontWeight.w500)),
                        ),
                        SizedBox(height: 27.0.h),
                        Row(children: [
                          Container(
                              color: AppColors.primaryColor,
                              width: 28.0.w,
                              height: 4.0.h,
                              margin:
                                  EdgeInsets.only(left: 4.0.w, right: 18.0.w)),
                          Text('Nigeria Contact Information',
                              style: titleMid.copyWith(
                                  color: AppColors.textColor2))
                        ]),
                        SizedBox(height: 15.0.h),
                        ApplicationTextField(
                            textCapitalization: TextCapitalization.words,
                            title: 'State of Origin',
                            controller: controller.stateOfOrigin),
                        SizedBox(height: 13.0.h),
                        ApplicationTextField(
                            textCapitalization: TextCapitalization.words,
                            title: 'Home town',
                            controller: controller.homeTown),
                        SizedBox(height: 13.0.h),
                        ApplicationTextField(
                            textCapitalization: TextCapitalization.words,
                            title: 'Address Line 1',
                            controller: controller.ngAddressLine1),
                        SizedBox(height: 13.0.h),
                        ApplicationTextField(
                            textCapitalization: TextCapitalization.words,
                            title: 'State/religion',
                            controller: controller.stateReligion),
                        SizedBox(height: 13.0.h),
                        ApplicationTextField(
                            textCapitalization: TextCapitalization.words,
                            title: 'Local Government Area',
                            controller: controller.localGovtArea),
                        SizedBox(height: 13.0.h),
                        ApplicationTextField(
                            textCapitalization: TextCapitalization.words,
                            title: 'City/Town',
                            controller: controller.cityTown),
                        SizedBox(height: 18.0.h),
                        ApplicationTextField(
                            keyboardType: TextInputType.number,
                            title: 'Postal Code',
                            controller: controller.postalCode),
                        SizedBox(height: 18.0.h),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              GestureDetector(
                                  onTap: () =>
                                      controller.clearNigeriaContactForm(),
                                  child: Text('Clear form',
                                      style: bodyEleven.copyWith(
                                          fontFamily: '',
                                          decoration: TextDecoration.underline,
                                          decorationColor:
                                              AppColors.primaryColor,
                                          color: AppColors.primaryColor))),
                              SizedBox(width: 3.0.w)
                            ]),
                        SizedBox(height: 46.0.h),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              AppButton(
                                  onTap: () {
                                    Get.back();
                                  },
                                  text: 'Prev',
                                  height: 23.0.w,
                                  width: 63.0.h,
                                  btnColor: AppColors.textColor,
                                  radius: 3,
                                  textStyle: bodyTwelve.copyWith(
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.colorWhite),
                                  isOutline: false,
                                  hasElevation: false),
                              SizedBox(width: 15.0.w),
                              AppButton(
                                  onTap: () {
                                    Get.toNamed(AppRoutes.nextOfKinInfo);
                                  },
                                  text: 'Next',
                                  height: 23.0.w,
                                  width: 63.0.h,
                                  radius: 3,
                                  textStyle: bodyTwelve.copyWith(
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.colorWhite),
                                  isOutline: false,
                                  hasElevation: false)
                            ]),
                        SizedBox(height: 31.0.h),
                        Center(
                            child: SvgPicture.asset(AppImages.progress3,
                                width: 108.0.w, height: 7.0.h)),
                      ]))
            ]))
          ])
        ]),
        bottomNavigationBar: Padding(
            padding: EdgeInsets.fromLTRB(21.0.w, 0, 21.0.w, 0),
            child: navbarHomeState));
  }
}
