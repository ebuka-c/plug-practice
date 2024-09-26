import 'package:global_plug/utilities/imports/general_import.dart';

class DocumentUploadWidget extends StatelessWidget {
  const DocumentUploadWidget(
      {super.key, this.title, this.onTap, this.height, this.maxSize});
  final String? title, maxSize;
  final Function()? onTap;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(title ?? '',
          style: bodyLarge.copyWith(
              color: AppColors.opacityText, fontWeight: FontWeight.w400)),
      SizedBox(height: 12.0.h),
      DottedBorder(
          borderType: BorderType.RRect,
          radius: const Radius.circular(15),
          dashPattern: const [6, 6, 6, 6],
          strokeWidth: 0.7,
          child: Container(
              width: double.infinity,
              height: height ?? 102.0.h,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(15)),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RichText(
                        text: TextSpan(
                            style: const TextStyle(color: Colors.black),
                            children: <TextSpan>[
                          TextSpan(
                              text: 'Click ',
                              style: bodyTen.copyWith(
                                  color: AppColors.primaryColor,
                                  fontWeight: FontWeight.w600),
                              recognizer: TapGestureRecognizer()
                                ..onTap = onTap),
                          TextSpan(
                              text: 'to select doc',
                              style: bodyTen.copyWith(
                                  color: AppColors.opacityText,
                                  fontWeight: FontWeight.w400))
                        ])),
                    SizedBox(height: 5.0.h),
                    Text(maxSize ?? 'Max file size 5mb',
                        style: bodyEight.copyWith(
                            color: const Color(0xff8f8f8f),
                            fontWeight: FontWeight.w400))
                  ])))
    ]);
  }
}
