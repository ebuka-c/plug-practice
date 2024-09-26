import 'package:global_plug/utilities/imports/general_import.dart';

class CompanyDetails extends StatelessWidget {
  const CompanyDetails({
    super.key,
    required this.text,
    this.textColor,
  });
  final String text;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: bodySmall.copyWith(color: textColor ?? AppColors.textColor3));
  }
}
