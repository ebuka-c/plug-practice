import 'package:global_plug/utilities/imports/general_import.dart';

class AppbarOnScroll extends StatelessWidget {
  const AppbarOnScroll({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(21.0.w, 44.0.h, 21.0.w, 35.0.h),
      decoration: const BoxDecoration(color: AppColors.primaryColor),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text('Welcome to your GPS account',
            style: bodyTen.copyWith(
                fontWeight: FontWeight.w500, color: AppColors.colorWhite)),
        //
        Row(children: [
          IconBadge(icon: Icons.notifications_none_outlined, onTap: () {}),
          SizedBox(width: 15.62.w),
          Container(
              height: 34,
              width: 34,
              decoration: BoxDecoration(
                  color: AppColors.opacityText,
                  image: DecorationImage(
                      image: NetworkImage(AppImages.profileHeader)),
                  shape: BoxShape.circle))
        ])
      ]),
    );
  }
}
