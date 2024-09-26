import 'package:global_plug/utilities/imports/general_import.dart';

class MyAccountSettings extends StatelessWidget {
  const MyAccountSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.whiteBg,
        appBar: AppBar(
            backgroundColor: AppColors.transparent,
            elevation: 0,
            foregroundColor: AppColors.colorBlack),
        body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 44.0.h),
            child: Center(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                  CircleAvatar(
                      radius: 36.0.w,
                      foregroundImage: NetworkImage(AppImages.profileHeader),
                      backgroundColor: AppColors.buttonBorder),
                  SizedBox(height: 20.0.h),
                  //
                  SizedBox(
                      width: 255.0.w,
                      child: Stack(children: [
                        Align(
                            alignment: Alignment.center,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text('Omeje Sky',
                                      style: bodyLarge.copyWith(
                                          color: AppColors.textColor,
                                          fontWeight: FontWeight.w600)),
                                  SizedBox(height: 4.0.h),
                                  Text('skybabyui7@gmail.com',
                                      style: bodyIntermediate.copyWith(
                                          color: AppColors.faintText))
                                ])),
                        Padding(
                            padding: EdgeInsets.only(top: 20.0.h),
                            child: Align(
                                alignment: Alignment.centerRight,
                                child: SvgPicture.asset(AppImages.pen)))
                      ])),
                  SizedBox(height: 30.0.h),
                  ProfileDetailsTile(
                      onTap: () {}, isNumberDetail: false, detail: 'Omeje Sky'),
                  SizedBox(height: 20.0.h),
                  ProfileDetailsTile(
                      onTap: () {},
                      isNumberDetail: false,
                      detail: 'skybabyui7@gmail.com'),
                  SizedBox(height: 20.0.h),
                  ProfileDetailsTile(onTap: () {}, isNumberDetail: true),
                  const Spacer(),
                  AppButton(
                    onTap: () {},
                    text: 'Update Profile',
                    height: 55.0.h,
                    width: 259.82.w,
                    radius: 15,
                    textStyle: bodyLarge.copyWith(
                        fontWeight: FontWeight.w500,
                        color: AppColors.colorWhite),
                    isOutline: false,
                    hasElevation: false,
                    margin: EdgeInsets.only(bottom: 33.0.h),
                  )
                ]))));
  }
}

class ProfileDetailsTile extends StatelessWidget {
  const ProfileDetailsTile({
    super.key,
    required this.isNumberDetail,
    this.detail,
    required this.onTap,
  });
  final bool isNumberDetail;
  final String? detail;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
        child: Container(
            width: double.infinity,
            height: 54.0.h,
            padding: EdgeInsets.symmetric(horizontal: 15.38.w, vertical: 9.0.h),
            color: AppColors.colorWhite,
            child: isNumberDetail
                ? Row(
                    children: [
                      SvgPicture.asset(AppImages.flag,
                          width: 23.25.w, height: 15.75.h),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.0.w),
                          child: const VerticalDivider(
                              width: 0.5, color: AppColors.dividerColor)),
                      Text('8149213332',
                          style: bodyIntermediate.copyWith(
                              color: AppColors.textColor9))
                    ],
                  )
                : Text(detail ?? '',
                    style: bodyIntermediate.copyWith(
                        color: AppColors.textColor9))),
      ),
    );
  }
}
