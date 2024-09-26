import 'package:global_plug/utilities/imports/general_import.dart';

successSnackbar(String? message,
    {double? width,
    EdgeInsetsGeometry? margin,
    int? duration,
    Widget? altMessage}) {
  var h = ScreenSize.screenHeight;
  return ScaffoldMessenger.of(Get.context!).showSnackBar(SnackBar(
      duration: Duration(seconds: duration ?? 3),
      behavior: SnackBarBehavior.floating,
      backgroundColor: AppColors.transparent,
      margin: margin ?? EdgeInsets.only(bottom: h / 1.3),
      elevation: 0,
      content: Container(
          height: 51.0.h,
          width: width ?? 319.0.w,
          decoration:
              const BoxDecoration(color: AppColors.colorWhite, boxShadow: [
            BoxShadow(
                color: Color(0xffcecfd1),
                offset: Offset(0, 1),
                blurRadius: 12,
                spreadRadius: 0)
          ]),
          child: Center(
              child: Padding(
                  padding: EdgeInsets.fromLTRB(20.0.w, 0, 0, 0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.check_circle, //error_outline
                            color: AppColors.primaryColor,
                            size: 26.0.w),
                        SizedBox(width: 14.0.w),
                        altMessage ??
                            Text(message ?? '',
                                textAlign: TextAlign.justify,
                                overflow: TextOverflow.ellipsis,
                                style: bodyEleven.copyWith(
                                    fontWeight: FontWeight.w400))
                      ]))))));
}
