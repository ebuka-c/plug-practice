import 'package:global_plug/utilities/imports/general_import.dart';

class AppointmentsTile extends StatelessWidget {
  const AppointmentsTile(
      {super.key, required this.completedApplication, this.onTap});
  final bool completedApplication;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
          child: Container(
              width: double.infinity,
              height: 85.0.h,
              padding: EdgeInsets.fromLTRB(12.0.w, 10.0.h, 16.0.w, 10.0.h),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
              //
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                //item1
                Container(
                    height: double.infinity,
                    width: 53.0.w,
                    padding: EdgeInsets.symmetric(
                        vertical: 2.5.h, horizontal: 5.0.w),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: completedApplication
                            ? AppColors.completed
                            : AppColors.upcoming),
                    child: Center(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                          Text('06',
                              style: title19.copyWith(
                                  color: AppColors.colorWhite, fontFamily: '')),
                          Text('TUE',
                              style: bodyEleven.copyWith(
                                  fontFamily: '', color: AppColors.colorWhite))
                        ]))),
                SizedBox(width: 13.0.w),
                //item2
                AppointmentDetails(
                    keyText: 'Time',
                    titlePadding: 9.0.w,
                    valueText: '09:08 AM'),
                SizedBox(width: 25.0.w),
                //item3
                AppointmentDetails(
                    keyText: 'Address',
                    titlePadding: 7.0.w,
                    valueText: '123 Immigration',
                    valueWidth: 85.0.w),
                SizedBox(width: 26.0.w),
                //item4
                AppointmentDetails(
                    keyText: 'Date',
                    titlePadding: 6.0.w,
                    valueText: '06 July 2024',
                    valueWidth: 49.0.w),
              ]))),
    );
  }
}
