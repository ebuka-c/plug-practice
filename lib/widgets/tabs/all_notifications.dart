import 'package:global_plug/utilities/imports/general_import.dart';

class AllNotifications extends StatelessWidget {
  const AllNotifications({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(children: [
      Container(
          height: 40.0.h,
          margin: EdgeInsets.only(top: 2.0.h),
          width: double.infinity,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.2),
                offset: const Offset(0, -2))
          ], color: AppColors.colorWhite)),
      Container(
          width: double.infinity,
          constraints: const BoxConstraints(maxHeight: double.infinity),
          padding: EdgeInsets.fromLTRB(22.0.w, 0.0.h, 25.0.w, 80.91.h),
          child: ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Get.toNamed(AppRoutes.notificationDetails);
                  },
                  child: Container(
                      width: double.infinity,
                      constraints:
                          const BoxConstraints(maxHeight: double.infinity),
                      child: //
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                            Padding(
                                padding: const EdgeInsets.only(top: 8.0),
                                child: notifications[index]['title'] ==
                                        'Denied Visa '
                                    ? SvgPicture.asset(AppImages.cancelIcon,
                                        width: 24, height: 24)
                                    : Image.asset(AppImages.logoImg2,
                                        width: 23, height: 23)),
                            SizedBox(width: 15.35.w, height: 10),
                            Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                      width: 293.0.w,
                                      constraints:
                                          BoxConstraints(maxHeight: 66.0.h),
                                      child: RichText(
                                          textAlign: TextAlign.start,
                                          text: TextSpan(
                                              text:
                                                  '${notifications[index]['title']}\n',
                                              style: bodyEleven45.copyWith(
                                                  fontFamily: 'Poppins',
                                                  color: notifications[index]
                                                          ['badNews']
                                                      ? AppColors.redText
                                                      : AppColors.textColor3,
                                                  fontWeight: FontWeight.w600),
                                              children: [
                                                TextSpan(
                                                    text:
                                                        '${notifications[index]['msg']}',
                                                    style:
                                                        bodyEleven45.copyWith(
                                                            fontFamily:
                                                                'Poppins',
                                                            fontWeight:
                                                                FontWeight.w400,
                                                            color: AppColors
                                                                .opacityText))
                                              ]))),
                                  SizedBox(height: 2.0.h),
                                  //
                                  notifications[index]['hasAttachment']
                                      ? SizedBox(
                                          height: 32.72.h,
                                          width: 291.0.w,
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Container(
                                                    width: 3.27.w,
                                                    decoration: BoxDecoration(
                                                        color: const Color(
                                                            0xffdddee1),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                    1.64))),
                                                SizedBox(height: 9.54.h),
                                                Container(
                                                    width: 284.65.w,
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 6.54.w,
                                                            vertical: 1),
                                                    child: Text(
                                                        'Student visa isn\'t available at the moment, you can try other visa types or try again later!!',
                                                        style: bodyTen.copyWith(
                                                            color: AppColors
                                                                .notificationText)))
                                              ]))
                                      : Container(),

                                  //
                                  const SizedBox(height: 1),
                                  Text('Last Wednesday at 9:42 AM',
                                      style: bodyTen.copyWith(
                                          color: AppColors.textColor6,
                                          fontWeight: FontWeight.w500)),
                                  Container(
                                      height: 32.72.h, color: Colors.amber)
                                ])
                          ])),
                );
              },
              separatorBuilder: (c, i) => SizedBox(height: 1.0.h),
              itemCount: notifications.length))
    ]));
  }
}

List notifications = [
  {
    'hasAttachment': false,
    'badNews': false,
    'title': 'Appointment Pack',
    'msg':
        'Your appointment information has been sent out. Click on Accept to get a Calendar invite. \nWe will send you a reminder',
  },
  {
    'hasAttachment': true,
    'badNews': true,
    'title': 'Denied Visa ',
    'msg': 'Your visa was denied ',
  },
  {
    'hasAttachment': false,
    'badNews': false,
    'title': 'Appointment Pack',
    'msg':
        'Your appointment information has been sent out. Click on Accept to get a Calendar invite. \nWe will send you a reminder',
  },
  {
    'hasAttachment': true,
    'badNews': true,
    'title': 'Denied Visa ',
    'msg': 'Your visa was denied ',
  },
  {
    'hasAttachment': false,
    'badNews': false,
    'title': 'Appointment Pack',
    'msg':
        'Your appointment information has been sent out. Click on Accept to get a Calendar invite. \nWe will send you a reminder',
  },
  {
    'hasAttachment': false,
    'badNews': false,
    'title': 'Appointment Pack',
    'msg':
        'Your appointment information has been sent out. Click on Accept to get a Calendar invite. \nWe will send you a reminder',
  },
  {
    'hasAttachment': false,
    'badNews': false,
    'title': 'Appointment Pack',
    'msg':
        'Your appointment information has been sent out. Click on Accept to get a Calendar invite. \nWe will send you a reminder',
  },
  {
    'hasAttachment': true,
    'badNews': true,
    'title': 'Denied Visa ',
    'msg': 'Your visa was denied ',
  }
];
