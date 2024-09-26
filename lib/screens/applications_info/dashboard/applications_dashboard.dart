import 'package:global_plug/utilities/imports/general_import.dart';

class ApplicationsDashboard extends StatelessWidget {
  const ApplicationsDashboard({super.key});

  final bool isEmpty = true;

  @override
  Widget build(BuildContext context) {
    return PopScope(
        canPop: false,
        child: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(AppImages.gpsbg), fit: BoxFit.cover)),
            child: Scaffold(
                backgroundColor: AppColors.fortyPercentWhite,
                body: Stack(children: [
                  Column(children: [
                    CustomAppbar(height: 149.5.h),
                    Padding(
                        padding: EdgeInsets.fromLTRB(21.0.w, 59.0.h, 21.0.w, 0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    ApplicationsDashboardCard(
                                        onTap: () {
                                          isEmpty
                                              ? Get.toNamed(AppRoutes
                                                  .upcomingAppointmentsEmpty)
                                              : Get.toNamed(AppRoutes
                                                  .upcomingAppointments);
                                        },
                                        text: 'Upcoming Appointments',
                                        icon: AppImages.upcomingAppointments),
                                    ApplicationsDashboardCard(
                                        onTap: () {
                                          isEmpty
                                              ? Get.toNamed(AppRoutes
                                                  .completedApplicationsEmpty)
                                              : Get.toNamed(AppRoutes
                                                  .completedApplications);
                                        },
                                        text: 'Completed Applications',
                                        icon: AppImages.airplaneTick)
                                  ]),
                              SizedBox(height: 26.59.h),
                              ApplicationsDashboardCard(
                                  onTap: () {
                                    isEmpty
                                        ? Get.toNamed(
                                            AppRoutes.paymentHistoryEmpty)
                                        : Get.toNamed(AppRoutes.paymentHistory);
                                  },
                                  text: 'Application Payment History',
                                  icon: AppImages.paymentHistory)
                            ]))
                  ]),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 21.0.w),
                          child: navbarApplicationsState))
                ]))));
  }
}
