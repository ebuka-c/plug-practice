import 'package:global_plug/utilities/imports/general_import.dart';

class RadioSelectableInput extends StatelessWidget {
  const RadioSelectableInput(
      {super.key, required this.title, required this.options});
  final String title;
  final List<CustomRadioTile> options;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(title, style: bodyEleven.copyWith(color: AppColors.opacityText)),
      ConstrainedBox(
        constraints: const BoxConstraints(
            maxHeight: double.infinity, maxWidth: double.infinity),
        child: Transform.scale(
          alignment: Alignment.centerLeft,
          scale: 0.75.w,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, children: options),
        ),
      )
    ]);
  }
}

class CustomRadioTile extends StatelessWidget {
  CustomRadioTile({
    super.key,
    required this.value,
    required this.groupValue,
    required this.title,
    this.onChanged,
  });

  final int value;
  final int groupValue;
  final String title;
  final void Function(int?)? onChanged;
  final appController = ApplicationController();

  @override
  Widget build(BuildContext context) {
    return RadioListTile(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        contentPadding: EdgeInsets.zero,
        dense: true,
        value: value,
        groupValue: groupValue,
        onChanged: onChanged,
        onFocusChange: (value) {},
        title: Text(title,
            style: bodyIntermediate.copyWith(color: AppColors.opacityText)));
  }
}

/**
 * 
 */
