import 'package:global_plug/utilities/imports/general_import.dart';

class AppointmentDetails extends StatelessWidget {
  const AppointmentDetails(
      {super.key,
      required this.keyText,
      required this.valueText,
      required this.titlePadding,
      this.valueWidth});
  final String keyText, valueText;
  final double titlePadding;
  final double? valueWidth;

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(left: titlePadding),
            child: Text(keyText,
                style: bodyEleven.copyWith(
                    fontFamily: '', color: AppColors.appointmentsFaintText)),
          ),
          SizedBox(
            width: valueWidth,
            child: Text(valueText,
                overflow: TextOverflow.ellipsis,
                style: bodyEleven.copyWith(
                    fontWeight: FontWeight.w600,
                    color: AppColors.appointmentsOpaqueText)),
          )
        ]);
  }
}
