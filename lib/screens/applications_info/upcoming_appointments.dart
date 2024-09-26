import 'package:global_plug/utilities/imports/general_import.dart';

class UpcomingAppointments extends StatelessWidget {
  const UpcomingAppointments({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AppImages.gpsbg), fit: BoxFit.cover)),
        child: Scaffold(
            backgroundColor: AppColors.fortyPercentWhite,
            appBar: AppBar(
                backgroundColor: AppColors.transparent,
                elevation: 0,
                foregroundColor: AppColors.textColor3,
                title: Text('Upcoming Appointments',
                    style: titleMid.copyWith(fontWeight: FontWeight.w500))),
            body: Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 21.0.w, vertical: 44.0.h),
                child: ConstrainedBox(
                    constraints:
                        const BoxConstraints(maxHeight: double.infinity),
                    child: ListView.separated(
                        itemBuilder: (context, index) {
                          return AppointmentsTile(
                              onTap: () => Get.toNamed(
                                  AppRoutes.upcomingAppointmentDetails),
                              completedApplication: false);
                        },
                        shrinkWrap: true,
                        separatorBuilder: (context, index) =>
                            SizedBox(height: 5.0.h),
                        itemCount: 2)))));
  }
}