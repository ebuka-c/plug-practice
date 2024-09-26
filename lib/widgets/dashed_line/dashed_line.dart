import 'package:global_plug/utilities/imports/general_import.dart';

class CustomDashedLine extends StatelessWidget {
  const CustomDashedLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      for (int i = 0; i < 20; i++)
        Expanded(
            child: Row(children: [
          const Expanded(
              child: Divider(color: AppColors.dividerColor, thickness: 1)),
          Expanded(child: Container())
        ]))
    ]);
  }
}
