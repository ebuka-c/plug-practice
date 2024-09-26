import 'package:global_plug/utilities/imports/general_import.dart';

class NgvisaContactInNig extends StatelessWidget {
  const NgvisaContactInNig({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(slivers: [
          sliverAppBar,
          SliverList(
              delegate: SliverChildListDelegate([
            Padding(
                padding: EdgeInsets.fromLTRB(24.0.w, 20.0.h, 24.0.w, 100.0.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                        GestureDetector(
                            onTap: () {},
                            child: Text('Save & continue',
                                style: bodyIntermediate.copyWith(
                                    color: AppColors.primaryColor)))
                      ]),
                      SizedBox(height: 28.0.h),
                      Text('Nigeria Visa',
                          style: titleLarge.copyWith(
                              color: AppColors.primaryColor)),
                      SizedBox(height: 10.0.h),
                      SizedBox(
                        height: 15,
                        child: Text(
                            'Complete the form to start your visa application process',
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
                        Text('Contact Information in Nigeria',
                            style:
                                titleMid.copyWith(color: AppColors.textColor3))
                      ]),
                      SizedBox(height: 28.0.h),
                      const ApplicationTextField(
                          title: 'Type of contact',
                          keyboardType: TextInputType.datetime),
                      SizedBox(height: 13.0.h),
                      const ApplicationTextField(
                          title: 'Full Name of inviting person',
                          textCapitalization: TextCapitalization.words,
                          keyboardType: TextInputType.datetime),
                      SizedBox(height: 13.0.h),
                      const ApplicationTextField(
                          title: 'Organization name or Contact name ',
                          textCapitalization: TextCapitalization.words),
                      SizedBox(height: 13.0.h),
                      ApplicationPhoneNumField(title: 'Phone Number (Nigeria)'),
                      SizedBox(height: 13.0.h),
                      const ApplicationTextField(
                          title: 'Organization street/ Contact street address',
                          textCapitalization: TextCapitalization.words),
                      SizedBox(height: 13.0.h),
                      const ApplicationTextField(
                          title: 'City/Town',
                          textCapitalization: TextCapitalization.words),
                      SizedBox(height: 13.0.h),
                      const ApplicationTextField(title: 'State'),
                      SizedBox(height: 13.0.h),
                      const ApplicationTextField(title: 'Postal or Zip code'),
                      SizedBox(height: 13.0.h),
                      const ApplicationTextField(title: 'Postal or Zip code'),
                      SizedBox(height: 18.0.h),
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                        GestureDetector(
                            onTap: () {},
                            child: Text('Clear form',
                                style: bodyEleven.copyWith(
                                    fontFamily: '',
                                    decoration: TextDecoration.underline,
                                    decorationColor: AppColors.primaryColor,
                                    color: AppColors.primaryColor))),
                        SizedBox(width: 3.0.w)
                      ]),
                      SizedBox(height: 35.0.h),
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
                                  Get.toNamed(AppRoutes.ngVisaReviewSubmit);
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
                      SizedBox(height: 10.0.h)
                    ]))
          ]))
        ]),
        bottomNavigationBar: Padding(
            padding: EdgeInsets.fromLTRB(21.0.w, 0, 21.0.w, 0),
            child: navbarHomeState));
  }
}
