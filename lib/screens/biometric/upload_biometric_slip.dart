import 'package:global_plug/utilities/imports/general_import.dart';

class UploadBiometricSlip extends StatelessWidget {
  const UploadBiometricSlip({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      CustomAppbar(height: 149.5.h),
      Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0.h, vertical: 60.0.h),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text('Upload biometric enrolment slip',
                style: bodyLarge.copyWith(
                    fontWeight: FontWeight.w500, color: AppColors.textColor7)),
            SizedBox(height: 6.0.h),
            Text('Upload the Biometric Slip issued after the Appointment',
                style: bodyEleven.copyWith(
                    fontFamily: '', color: AppColors.appointmentsFaintText)),
            SizedBox(height: 38.0.h),
            DocumentUploadWidget(
                onTap: () async {
                  //click to select
                  final result = await FilePicker.platform.pickFiles();
                  // if (result==null) return;
                  // final file = result.files.first;
                  // controller.openFile(file);
                },
                height: 178.0.h),
            SizedBox(height: 200.0.h),
            AppButton(
                onTap: () {
                  Get.toNamed(AppRoutes.biometricSuccessfulUpload);
                },
                isOutline: false,
                hasElevation: true,
                text: 'Upload')
          ]))
    ]));
  }
}
