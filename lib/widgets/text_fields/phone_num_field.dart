import 'package:global_plug/utilities/imports/general_import.dart';

class PhoneNumberField extends StatelessWidget {
  const PhoneNumberField(
      {super.key,
      required this.controller,
      this.inputFormatters,
      this.labelText,
      this.border,
      this.focusedBorder,
      this.enabledBorder,
      this.hintStyle,
      this.hintText});

  final TextEditingController controller;
  final List<TextInputFormatter>? inputFormatters;
  final String? labelText, hintText;
  final TextStyle? hintStyle;
  final InputBorder? border, focusedBorder, enabledBorder;

  @override
  Widget build(BuildContext context) {
    return IntlPhoneField(
        disableAutoFillHints: true,
        disableLengthCheck: true,
        controller: controller,
        style: bodyLarge.copyWith(fontWeight: FontWeight.w500),
        cursorColor: AppColors.opacityText,
        cursorWidth: 1,
        keyboardType: TextInputType.number,
        inputFormatters: inputFormatters ??
            [
              LengthLimitingTextInputFormatter(10),
              FilteringTextInputFormatter.digitsOnly
            ],
        onChanged: (value) {
          debugPrint(value.completeNumber);
        },
        decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.always,
            contentPadding: EdgeInsets.only(left: 10.0.w, bottom: 15.0.h),
            labelText: labelText,
            labelStyle: bodyEight.copyWith(
                color: AppColors.opacityText, fontWeight: FontWeight.w300),
            hintText: hintText ?? 'Phone Number',
            hintStyle: hintStyle ??
                titleMid.copyWith(
                    color: AppColors.opacityText, fontWeight: FontWeight.w300),
            border: border ??
                const UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: AppColors.opacityText, width: 0.5)),
            focusedBorder: focusedBorder ??
                const UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: AppColors.opacityText, width: 1.5)),
            enabledBorder: enabledBorder));
  }
}

// specific to passport/visa application screens

class ApplicationPhoneNumField extends StatelessWidget {
  ApplicationPhoneNumField({
    super.key,
    required this.title,
    this.phoneNumController,
  });

  final ApplicationController controller = ApplicationController();
  final String title;
  final TextEditingController? phoneNumController;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(left: 2.0.w),
          child: Text(title,
              style: bodyEleven.copyWith(color: AppColors.opacityText))),
      SizedBox(height: 8.0.h),
      Container(
          height: 35.0.h,
          decoration: const BoxDecoration(color: AppColors.textfieldFill),
          width: double.infinity,
          child: PhoneNumberField(
              controller: phoneNumController ?? controller.phoneNumController,
              labelText: null,
              hintText: '',
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(1),
                  borderSide: const BorderSide(
                      width: 1.5, color: AppColors.textfieldBorder)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(1),
                  borderSide: const BorderSide(
                      width: 1.5, color: AppColors.textfieldBorder)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(1),
                  borderSide: const BorderSide(
                      width: 0.5, color: AppColors.textfieldBorder)))),
    ]);
  }
}
