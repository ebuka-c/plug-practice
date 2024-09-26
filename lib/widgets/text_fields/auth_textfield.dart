import 'package:global_plug/utilities/imports/general_import.dart';

class AuthTextField extends StatelessWidget {
  const AuthTextField(
      {super.key,
      required this.controller,
      required this.labelText,
      this.suffixIcon,
      this.obscureText,
      this.validator,
      this.keyboardType,
      this.readOnly,
      this.inputFormatters,
      this.suffix,
      this.textCapitalization});

  final TextEditingController controller;
  final TextInputType? keyboardType;
  final String labelText;
  final Widget? suffixIcon, suffix;
  final bool? obscureText, readOnly;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;
  final TextCapitalization? textCapitalization;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 50.0.h,
        child: TextFormField(
            controller: controller,
            readOnly: readOnly ?? false,
            textCapitalization: textCapitalization ?? TextCapitalization.none,
            style: bodyLarge.copyWith(fontWeight: FontWeight.w500),
            cursorColor: AppColors.opacityText,
            cursorWidth: 1,
            onTapOutside: (PointerDownEvent event) {
              FocusManager.instance.primaryFocus?.unfocus();
            },
            keyboardType: keyboardType,
            inputFormatters: inputFormatters,
            obscureText: obscureText ?? false,
            obscuringCharacter: '*',
            validator: validator ??
                (value) {
                  if (value!.isEmpty) {
                    return "Field cannot be empty";
                  }
                  return null;
                },
            decoration: InputDecoration(
                contentPadding: EdgeInsets.only(left: 10.0.w, bottom: 15.0.h),
                labelText: labelText,
                suffix: suffix,
                labelStyle: titleMid.copyWith(
                    color: AppColors.opacityText, fontWeight: FontWeight.w300),
                border: const UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: AppColors.opacityText, width: 0.5)),
                focusedBorder: const UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: AppColors.opacityText, width: 1.5)),
                suffixIcon: suffixIcon)));
  }
}
