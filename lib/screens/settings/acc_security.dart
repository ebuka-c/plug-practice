import 'package:global_plug/utilities/imports/general_import.dart';

class AccSecurity extends StatelessWidget {
  const AccSecurity({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: AppColors.transparent,
          elevation: 0,
          foregroundColor: AppColors.colorBlack),
      body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 21.0.w, vertical: 51.0.h),
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 9.87.h),
            child: Column(
              children: [
                SettingsOptionsTile(
                    leading: AppImages.lockIcon,
                    title: 'Change Password',
                    onTap: () {},
                    hasSubtitle: false),
                SizedBox(height: 10.0.h),
                SettingsOptionsTile(
                    leading: AppImages.profileicon,
                    title: 'Complete your Profile',
                    onTap: () {},
                    hasSubtitle: false),
              ],
            ),
          )),
    );
  }
}
