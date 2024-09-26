import 'package:global_plug/utilities/imports/general_import.dart';

class TopQuestionsBox extends StatelessWidget {
  const TopQuestionsBox(
      {super.key,
      required this.question,
      required this.answer,
      required this.icon});
  final String question, answer;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
        // height: 139.0.h,
        width: double.infinity,
        padding: EdgeInsets.fromLTRB(10.0.h, 16.0.h, 10.0.h, 20.0.h),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: AppColors.buttonBorder2, width: 0.8)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            SizedBox(
              width: 265.0.w,
              child: Text(question,
                  style:
                      bodyIntermediate.copyWith(fontWeight: FontWeight.w500)),
            ),
            Icon(icon, color: AppColors.primaryColor)
          ]),
          SizedBox(height: 12.0.h),
          Text(answer,
              style: bodyIntermediate.copyWith(
                  color: AppColors.cardInputFieldHint))
        ]));
  }
}
