import 'package:global_plug/utilities/imports/general_import.dart';

class CreditCardInputField extends StatelessWidget {
  const CreditCardInputField(
    this.controller, {
    super.key,
    required this.title,
    required this.hintText,
    this.keyboardType,
    this.focusNode,
    this.textCapitalization,
  });
  final String title, hintText;
  final TextInputType? keyboardType;
  final TextEditingController controller;
  final FocusNode? focusNode;
  final TextCapitalization? textCapitalization;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: bodyEleven.copyWith(color: AppColors.opacityText),
        ),
        SizedBox(
            height: 45.0.h,
            child: TextFormField(
                controller: controller,
                maxLines: 1,
                focusNode: focusNode,
                textCapitalization:
                    textCapitalization ?? TextCapitalization.none,
                style: bodyLarge.copyWith(fontWeight: FontWeight.w500),
                cursorColor: AppColors.opacityText,
                cursorWidth: 1,
                onTapOutside: (PointerDownEvent event) {
                  FocusManager.instance.primaryFocus?.unfocus();
                },
                keyboardType: keyboardType ?? TextInputType.number,
                inputFormatters: const [],
                obscureText: false,
                obscuringCharacter: '*',
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Field cannot be empty";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  isDense: true,
                  hintText: hintText,
                  hintStyle: bodyIntermediate.copyWith(
                      color: AppColors.cardInputFieldHint,
                      fontWeight: FontWeight.w700),
                  contentPadding: EdgeInsets.only(left: 5.0.w, bottom: 5.0.h),
                  enabledBorder: const UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xffbcbcbc), width: 1.5)),
                  border: const UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xffbcbcbc), width: 0.5)),
                  focusedBorder: const UnderlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xffbcbcbc), width: 1.5)),
                )))
      ],
    );
  }
}
