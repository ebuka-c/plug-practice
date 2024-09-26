import 'package:global_plug/utilities/imports/general_import.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.whiteBg,
        appBar: AppBar(
            backgroundColor: AppColors.transparent,
            elevation: 0,
            foregroundColor: AppColors.colorBlack,
            title: Text('Profile', style: titleLarge)),
        body: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(children: [
              Container(
                  width: double.infinity,
                  height: 89.0.h,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                            radius: 28.5.w,
                            foregroundImage:
                                NetworkImage(AppImages.profileHeader),
                            backgroundColor: AppColors.buttonBorder),
                        SizedBox(width: 11.0.w),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Omeje Sky',
                                  style: bodyLarge.copyWith(
                                      color: AppColors.colorWhite,
                                      fontWeight: FontWeight.w600)),
                              SizedBox(height: 4.0.h),
                              Text('Skybabyui7@gmail.com',
                                  style: bodyEleven.copyWith(
                                      color: AppColors.textColor8))
                            ])
                      ])),
              SizedBox(height: 25.0.h),
              Container(
                  width: double.infinity,
                  constraints: const BoxConstraints(maxHeight: double.infinity),
                  padding: EdgeInsets.symmetric(horizontal: 16.0.w),
                  decoration: BoxDecoration(
                      color: AppColors.colorWhite,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                            color: AppColors.greyColor.withOpacity(0.1),
                            blurRadius: 18)
                      ]),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    SettingsOptionsTile(
                        onTap: () => Get.toNamed(AppRoutes.myAccountSettings),
                        leading: AppImages.profileicon,
                        title: 'My Account',
                        hasSubtitle: true,
                        subTitle: 'Make changes to your account'),
                    SettingsOptionsTile(
                        onTap: () => Get.toNamed(AppRoutes.accSecurity),
                        leading: AppImages.lockIcon,
                        title: 'Privacy & Security',
                        hasSubtitle: true,
                        subTitle: 'Protect your account'),
                    SettingsOptionsTile(
                        onTap: () => Get.toNamed(AppRoutes.faqScreen),
                        leading: AppImages.helpSupport,
                        hasSubtitle: false,
                        title: 'Help & Support'),
                    SettingsOptionsTile(
                        onTap: () => logOutDialog(context),
                        leading: AppImages.logout,
                        title: 'Logout',
                        hasSubtitle: true,
                        subTitle: 'Further secure your account for safety'),
                  ]))
            ])));
  }
}

class SettingsOptionsTile extends StatelessWidget {
  const SettingsOptionsTile(
      {super.key,
      required this.leading,
      required this.title,
      this.subTitle,
      required this.onTap,
      required this.hasSubtitle});
  final String leading, title;
  final String? subTitle;
  final bool hasSubtitle;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onTap: onTap,
        contentPadding: EdgeInsets.zero,
        leading: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
                color: AppColors.primaryColor.withOpacity(0.1),
                shape: BoxShape.circle),
            child: Center(
              child: SizedBox(
                  width: 20, height: 20, child: SvgPicture.asset(leading)),
            )),
        title: Text(title,
            style: bodyIntermediate.copyWith(
                fontWeight: FontWeight.w500, color: AppColors.textColor9)),
        subtitle: hasSubtitle
            ? Text(subTitle ?? '',
                style: bodyEleven.copyWith(color: AppColors.textColor10))
            : null,
        trailing: const Icon(Icons.arrow_forward_ios_rounded,
            color: AppColors.textColor10, size: 20));
  }
}
