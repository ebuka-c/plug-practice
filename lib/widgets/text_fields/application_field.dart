import 'package:global_plug/utilities/imports/general_import.dart';

class ApplicationTextField extends StatelessWidget {
  const ApplicationTextField(
      {super.key,
      this.controller,
      required this.title,
      this.keyboardType,
      this.readOnly,
      this.inputFormatters,
      this.hintText,
      this.suffixIcon,
      this.textCapitalization,
      this.fillColor,
      this.height,
      this.borderRadius,
      this.prefixIcon,
      this.borderSide,
      this.hintColor});

  final TextEditingController? controller;
  final String title;
  final String? hintText;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final bool? readOnly;
  final Widget? suffixIcon, prefixIcon;
  final TextCapitalization? textCapitalization;
  final Color? fillColor, hintColor;
  final double? height, borderRadius;
  final BorderSide? borderSide;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(left: 2.0.w),
          child: Text(title,
              style: bodyEleven.copyWith(color: AppColors.opacityText))),
      SizedBox(height: 8.0.h),
      SizedBox(
          height: height ?? 35.0.h,
          width: double.infinity,
          child: TextFormField(
              controller: controller,
              keyboardType: keyboardType,
              textCapitalization: textCapitalization ?? TextCapitalization.none,
              readOnly: readOnly ?? false,
              onTapOutside: (PointerDownEvent event) {
                FocusManager.instance.primaryFocus?.unfocus();
              },
              inputFormatters: inputFormatters,
              style: bodyIntermediate.copyWith(fontWeight: FontWeight.w500),
              cursorColor: AppColors.opacityText,
              cursorWidth: 1,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 10.0.w, bottom: 15.0.h),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(borderRadius ?? 1),
                      borderSide: borderSide ??
                          const BorderSide(
                              width: 1.5, color: AppColors.textfieldBorder)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(1),
                      borderSide: borderSide ??
                          const BorderSide(
                              width: 0.5, color: AppColors.textfieldBorder)),
                  filled: true,
                  fillColor: fillColor ?? AppColors.textfieldFill,
                  hintText: hintText,
                  hintStyle: bodyIntermediate.copyWith(
                      fontWeight: FontWeight.w500,
                      color: hintColor ?? AppColors.opacityText),
                  suffixIcon: suffixIcon,
                  prefixIcon: prefixIcon)))
    ]);
  }
}
