import 'package:global_plug/utilities/imports/general_import.dart';

class ApplicationsDashboardCard extends StatelessWidget {
  const ApplicationsDashboardCard({
    super.key,
    required this.onTap,
    required this.text,
    required this.icon,
  });

  final Function() onTap;
  final String text, icon;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
          surfaceTintColor: AppColors.colorWhite,
          child: SizedBox(
            height: 143.0.h,
            width: 152.07.w,
            child: Center(
                child: Padding(
                    padding:
                        EdgeInsets.fromLTRB(25.5.w, 18.29.h, 25.5.w, 23.0.h),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              width: 60.64.w,
                              height: 60.64.w,
                              decoration: BoxDecoration(
                                  color: AppColors.tenPercentPri,
                                  borderRadius: BorderRadius.circular(19.25)),
                              child: Center(
                                  child: SvgPicture.asset(icon,
                                      height: 30.0.w, width: 28.87.w))),
                          Text(text,
                              textAlign: TextAlign.center,
                              style: bodyTen.copyWith(
                                  color: AppColors.dashboardText))
                        ]))),
          )),
    );
  }
}
