import 'package:global_plug/utilities/imports/general_import.dart';

class IconBadge extends StatelessWidget {
  final IconData icon;
  final Function onTap;
  const IconBadge({
    super.key,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Stack(children: [
        Icon(icon, color: AppColors.colorWhite),
        Positioned(
            // top: 1.0.h,
            left: 12.0.w,
            child: Container(
                height: 8.5,
                width: 8.5,
                decoration: BoxDecoration(
                    border: Border.all(color: AppColors.deepPrimary),
                    shape: BoxShape.circle,
                    color: AppColors.notification)))
      ]),
    );
  }
}
