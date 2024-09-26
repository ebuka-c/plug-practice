import 'package:global_plug/utilities/imports/general_import.dart';

class NavigationBarWidget extends StatelessWidget {
  const NavigationBarWidget(
      {super.key,
      this.fontWeight0,
      this.fontWeight1,
      this.fontWeight2,
      this.iconColor0,
      this.iconColor1,
      this.iconColor2,
      this.onTap0,
      this.onTap1,
      this.onTap2});
  final Color? iconColor0, iconColor1, iconColor2;
  final FontWeight? fontWeight0, fontWeight1, fontWeight2;
  final Function()? onTap0, onTap1, onTap2;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 63.0.h,
        width: double.infinity,
        margin: EdgeInsets.fromLTRB(0.0.w, 8.0.h, 0.0.w, 21.0.h),
        padding: EdgeInsets.symmetric(horizontal: 50.0.w, vertical: 10.0.h),
        decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(59)),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          NavRoutes(
              icon: SvgPicture.asset(AppImages.homeIcon,
                  color: iconColor0 ?? AppColors.iconGrey),
              onTap: onTap0,
              text: 'Home',
              fontWeight: fontWeight0 ?? FontWeight.w300),
          NavRoutes(
              icon: SvgPicture.asset(AppImages.applications,
                  color: iconColor1 ?? AppColors.iconGrey),
              onTap: onTap1,
              text: 'Applications',
              fontWeight: fontWeight1 ?? FontWeight.w300),
          NavRoutes(
              icon: SvgPicture.asset(AppImages.supportIcon,
                  color: iconColor2 ?? AppColors.iconGrey),
              onTap: onTap2,
              text: 'Support',
              fontWeight: fontWeight2 ?? FontWeight.w300)
        ]));
  }
}

class NavRoutes extends StatelessWidget {
  const NavRoutes(
      {super.key,
      required this.icon,
      this.onTap,
      required this.text,
      this.fontWeight});
  final Widget icon;
  final Function()? onTap;
  final String text;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 22.0.h, width: 22.0.h, child: icon),
            Text(text,
                style: bodyIntermediate.copyWith(
                    color: AppColors.colorWhite,
                    fontWeight: fontWeight ?? FontWeight.w700))
          ]),
    );
  }
}
