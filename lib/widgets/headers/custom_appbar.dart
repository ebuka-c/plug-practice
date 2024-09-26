import 'package:global_plug/utilities/imports/general_import.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key, this.height});

  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height ?? 137.0.h,
        decoration: const BoxDecoration(
            color: AppColors.deepPrimary,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20))),
        child: Padding(
            padding: EdgeInsets.fromLTRB(19, 67.0.h, 24, 20),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                      width: ScreenSize.screenWidth * 0.85,
                      child: Text('Hi Sky, Good Afternoon',
                          overflow: TextOverflow.ellipsis,
                          style: titleMid.copyWith(
                              fontWeight: FontWeight.w600,
                              color: AppColors.colorWhite))),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Welcome to your GPS account',
                            style: bodyTen.copyWith(
                                fontWeight: FontWeight.w500,
                                color: AppColors.colorWhite)),
                        Row(children: [
                          IconBadge(
                              icon: Icons.notifications_none_outlined,
                              onTap: () =>
                                  Get.toNamed(AppRoutes.notificationsScreen)),
                          SizedBox(width: 15.62.w),
                          GestureDetector(
                            onTap: () => Get.toNamed(AppRoutes.settingsScreen),
                            child: Container(
                                height: 34,
                                width: 34,
                                decoration: BoxDecoration(
                                    color: AppColors.greyColor,
                                    border:
                                        Border.all(color: AppColors.colorWhite),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            AppImages.profileHeader)),
                                    shape: BoxShape.circle)),
                          )
                        ])
                      ])
                ])));
  }

  // @override
  // Size get preferredSize => Size(double.maxFinite, 180.0.h);
}
