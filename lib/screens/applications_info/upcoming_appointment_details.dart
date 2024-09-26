import 'package:global_plug/utilities/imports/general_import.dart';

class UpcomingAppointmentDetails extends StatelessWidget {
  const UpcomingAppointmentDetails({super.key});

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
                foregroundColor: AppColors.textColor3),
            body: Stack(children: [
              Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: 32.0.h, horizontal: 19.0.w),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            height: 56.0.h,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: const LinearGradient(colors: [
                                  AppColors.primaryDark,
                                  AppColors.primaryColor
                                ], stops: [
                                  0.35,
                                  1
                                ])),
                            child: Center(
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                  SizedBox(width: 40.64.w),
                                  SvgPicture.asset(
                                      AppImages.upcomingAppointments2,
                                      width: 30.08.w,
                                      height: 28.87.h),
                                  SizedBox(width: 15.28.w),
                                  Text('Appointment Details',
                                      style: bodyMid.copyWith(
                                          fontWeight: FontWeight.w700,
                                          color: AppColors.colorWhite))
                                ]))),
                        SizedBox(height: 16.0.h),
                        Column(children: [
                          SizedBox(height: 17.0.h),
                          //
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(children: [
                                  SizedBox(width: 32.0.w),
                                  Text('Tracking ID',
                                      style: bodyEleven.copyWith(
                                          color: const Color(0xff293646)))
                                ]),
                                SizedBox(
                                  width: 118.0.w,
                                  child: Text('#126704',
                                      textAlign: TextAlign.start,
                                      style: bodyIntermediate.copyWith(
                                          fontWeight: FontWeight.w700,
                                          color: AppColors.textColor2)),
                                )
                              ]),
                          SizedBox(height: 18.0.h),
                          Container(
                              height: 125.0.h,
                              constraints: const BoxConstraints(
                                  maxHeight: double.infinity),
                              child: ListView.separated(
                                  itemCount: upcomingAppointment.length,
                                  itemBuilder: (context, index) {
                                    return Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(children: [
                                            SizedBox(
                                                height: 20.0.h,
                                                width: 20.0.h,
                                                child:
                                                    upcomingAppointment[index]
                                                        ['child']),
                                            SizedBox(width: 12.0.w),
                                            Text(
                                                upcomingAppointment[index]
                                                    ['key'],
                                                style:
                                                    bodyIntermediate.copyWith(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        color: AppColors
                                                            .textColor2))
                                          ]),
                                          SizedBox(
                                            width: 118.0.w,
                                            child: Text(
                                                upcomingAppointment[index]
                                                    ['value'],
                                                textAlign: TextAlign.start,
                                                style:
                                                    bodyIntermediate.copyWith(
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        color: AppColors
                                                            .textColor2)),
                                          )
                                        ]);
                                  },
                                  separatorBuilder: (context, index) =>
                                      SizedBox(height: 18.0.h))),

                          SizedBox(height: 21.68.h),
                          Divider(color: AppColors.greyColor, thickness: 0.5),
                          SizedBox(height: 25.0.h),
                          Row(children: [
                            Text('View Calendar',
                                style: bodyNine.copyWith(
                                    color: AppColors.primaryColor,
                                    fontWeight: FontWeight.w500)),
                            const SizedBox(width: 4),
                            const Icon(Icons.arrow_drop_down,
                                color: AppColors.textColor)
                          ])
                        ])
                      ])),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 21.0.w),
                      child: navbarApplicationsState))
            ])));
  }
}
