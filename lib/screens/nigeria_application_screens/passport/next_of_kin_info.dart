import 'package:global_plug/utilities/imports/general_import.dart';

class NextOfKinInfo extends GetView<ApplicationController> {
  const NextOfKinInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
          CustomScrollView(slivers: [
            //
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
                          Text('Next of Kin Informatiion',
                              style: titleMid.copyWith(
                                  color: AppColors.textColor2))
                        ]),
                        SizedBox(height: 15.0.h),
                        ApplicationTextField(
                            title: 'Full Name of next of kin',
                            textCapitalization: TextCapitalization.words,
                            controller: controller.nextOfKinName),
                        SizedBox(height: 13.0.h),
                        ApplicationTextField(
                            textCapitalization: TextCapitalization.words,
                            title: 'Relationship',
                            controller: controller.relationship),
                        SizedBox(height: 13.0.h),
                        ApplicationTextField(
                            textCapitalization: TextCapitalization.words,
                            title: 'Address Line 1',
                            controller: controller.nextOfKinAddress),
                        SizedBox(height: 13.0.h),
                        ApplicationTextField(
                            textCapitalization: TextCapitalization.words,
                            title: 'State',
                            controller: controller.nextOfKinState),
                        SizedBox(height: 13.0.h),
                        ApplicationTextField(
                            textCapitalization: TextCapitalization.words,
                            title: 'Local Govt Area',
                            controller: controller.nextOfKinLGA),
                        SizedBox(height: 13.0.h),
                        ApplicationTextField(
                            textCapitalization: TextCapitalization.words,
                            title: 'City/Town',
                            controller: controller.kinCityTown),
                        SizedBox(height: 18.0.h),
                        ApplicationTextField(
                            keyboardType: TextInputType.number,
                            title: 'Postal Code',
                            controller: controller.kinPostalCode),
                        SizedBox(height: 18.0.h),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(left: 2.0.w),
                                  child: Text('Contact',
                                      style: bodyEleven.copyWith(
                                          color: AppColors.opacityText))),
                              SizedBox(height: 8.0.h),
                              //phone number field
                              Container(
                                  height: 35.0.h,
                                  decoration: const BoxDecoration(
                                      color: AppColors.textfieldFill),
                                  width: double.infinity,
                                  child: PhoneNumberField(
                                      controller: controller.nextOfKinPhone,
                                      labelText: null,
                                      hintText: '',
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(1),
                                          borderSide: const BorderSide(
                                              width: 1.5,
                                              color:
                                                  AppColors.textfieldBorder)),
                                      focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(1),
                                          borderSide: const BorderSide(
                                              width: 1.5,
                                              color:
                                                  AppColors.textfieldBorder)),
                                      enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(1),
                                          borderSide: const BorderSide(
                                              width: 0.5,
                                              color:
                                                  AppColors.textfieldBorder)))),
                            ]),
                        SizedBox(height: 18.0.h),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              GestureDetector(
                                  onTap: () => controller.clearNextOfKinForm(),
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
                                  text: 'Preview',
                                  height: 32.0.w,
                                  width: 89.0.h,
                                  radius: 3,
                                  borderColor: AppColors.primaryColor,
                                  textStyle: bodyTwelve.copyWith(
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.primaryColor),
                                  isOutline: true,
                                  hasElevation: false),
                              SizedBox(width: 15.0.w),
                              AppButton(
                                  onTap: () {
                                    Get.toNamed(AppRoutes.reviewAndSubmit);
                                  },
                                  text: 'Next',
                                  height: 32.0.w,
                                  width: 89.0.h,
                                  radius: 3,
                                  textStyle: bodyTwelve.copyWith(
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.colorWhite),
                                  isOutline: false,
                                  hasElevation: false)
                            ]),
                        SizedBox(height: 31.0.h),
                        Center(
                            child: SvgPicture.asset(AppImages.progress4,
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
