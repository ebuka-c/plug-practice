import 'package:global_plug/utilities/imports/general_import.dart';

class NotificationDetails extends StatelessWidget {
  const NotificationDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: AppColors.colorWhite,
            surfaceTintColor: AppColors.colorWhite,
            foregroundColor: AppColors.textColor3,
            title: Text('Notifications',
                style: title19.copyWith(
                    fontWeight: FontWeight.w600, color: AppColors.textColor3)),
            centerTitle: true,
            elevation: 5,
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
            ]),
        body: Padding(
            padding: EdgeInsets.fromLTRB(36.0.w, 70.87.h, 19.0.w, 0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Align(
                  alignment: Alignment.bottomRight,
                  child: Text('Wednesday at 9:42 AM',
                      style: bodyTen.copyWith(
                          fontWeight: FontWeight.w500,
                          color: AppColors.textColor6))),
              SizedBox(height: 22.0.h),
              Text('Appointment Pack Information',
                  style: bodyIntermediate.copyWith(
                      fontWeight: FontWeight.w600,
                      color: AppColors.textColor3)),
              SizedBox(height: 24.0.h),
              SizedBox(
                  height: 184.0.h,
                  child: RichText(
                      textAlign: TextAlign.left,
                      text: TextSpan(
                          text: notificationMSg1,
                          style: bodyEleven.copyWith(
                              fontFamily: 'Poppins',
                              color: AppColors.notificationText,
                              fontWeight: FontWeight.w500),
                          children: [
                            TextSpan(
                                text: 'Accept Invite ',
                                style: bodyEleven.copyWith(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.textColor3),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    debugPrint('Accept');
                                  }),
                            TextSpan(text: notificationMSg2)
                          ]))),
              SizedBox(height: 48.0.h),
              Center(
                  child: AppButton(
                      onTap: () {
                        Get.toNamed(AppRoutes.uploadBiometricSlip);
                      },
                      isOutline: false,
                      hasElevation: true,
                      text: 'Upload Biometric',
                      textStyle: bodyIntermediate.copyWith(
                          color: AppColors.colorWhite,
                          fontWeight: FontWeight.w500),
                      width: 160.17.w,
                      height: 32.72.h,
                      radius: 8.18)),
              const Spacer(),
              //
              Center(
                  child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                          text: 'Global Plug Services\n',
                          style: bodyNine.copyWith(
                              fontWeight: FontWeight.w400,
                              color: AppColors.textColor2),
                          children: [
                            TextSpan(
                                text: '123 Immigration Road, London, UK\n',
                                style: bodySmall.copyWith(
                                    color: AppColors.textColor2,
                                    fontWeight: FontWeight.w400)),
                            TextSpan(
                                text: '44 20 7946 0958 |\n',
                                style: bodySmall.copyWith(
                                    color: AppColors.textColor2,
                                    fontWeight: FontWeight.w400)),
                            TextSpan(
                                text: 'support@globalplugservices.com',
                                style: bodySmall.copyWith(
                                    fontFamily: 'Poppins',
                                    color: AppColors.primaryColor,
                                    fontWeight: FontWeight.w400),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    debugPrint('email support');
                                  })
                          ]))),
              //

              SizedBox(height: 50.0.h)
            ])));
  }
}
