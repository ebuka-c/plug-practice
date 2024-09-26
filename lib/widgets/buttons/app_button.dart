import 'package:global_plug/utilities/imports/general_import.dart';

class AppButton extends StatelessWidget {
  const AppButton(
      {super.key,
      this.height,
      this.width,
      this.shadowColor,
      this.offset,
      this.text,
      this.onTap,
      required this.isOutline,
      required this.hasElevation,
      this.radius,
      this.textStyle,
      this.btnColor,
      this.borderColor,
      this.btnChild,
      this.margin});
  final double? height, width, radius;
  final Color? shadowColor, btnColor, borderColor;
  final Offset? offset;
  final Function()? onTap;
  final String? text;
  final bool isOutline, hasElevation;
  final TextStyle? textStyle;
  final Widget? btnChild;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          height: height ?? 51.0.h,
          width: width ?? double.infinity,
          margin: margin,
          decoration: BoxDecoration(
              color: !isOutline
                  ? btnColor ?? AppColors.primaryColor
                  : btnColor ?? AppColors.transparent,
              borderRadius: BorderRadius.circular(radius ?? 48),
              border: isOutline
                  ? Border.all(
                      color: borderColor ?? AppColors.buttonBorder, width: 0.8)
                  : null,
              boxShadow: hasElevation
                  ? [
                      BoxShadow(
                          color: shadowColor ?? AppColors.buttonShadow,
                          spreadRadius: 0,
                          blurRadius: 3,
                          offset: offset ?? const Offset(0, 4))
                    ]
                  : null),
          child: Center(
              child: btnChild ??
                  Text(text ?? '',
                      style: textStyle ??
                          titleMid.copyWith(color: AppColors.colorWhite)))),
    );
  }
}

class ReceiptDownloadBtn extends StatelessWidget {
  const ReceiptDownloadBtn(
      {super.key,
      required this.onTap,
      this.radius,
      this.text,
      this.childColor,
      this.height,
      this.children,
      this.hasElevation});

  final Function() onTap;
  final double? radius, height;
  final String? text;
  final bool? hasElevation;
  final Color? childColor;
  final List<Widget>? children;

  @override
  Widget build(BuildContext context) {
    return AppButton(
        onTap: onTap,
        isOutline: true,
        radius: radius,
        height: height,
        hasElevation: hasElevation ?? true,
        shadowColor: AppColors.whiteBtnShadow,
        btnColor: AppColors.colorWhite,
        btnChild: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: children ??
                [
                  SvgPicture.asset(AppImages.downloadIcon,
                      color: childColor, height: 24.0.h, width: 14.0.h),
                  SizedBox(width: 13.0.w),
                  Text(text ?? 'Download Receipt',
                      style: bodyLarge.copyWith(
                          color: childColor ?? AppColors.primaryColor,
                          fontWeight: FontWeight.w400))
                ]));
  }
}
