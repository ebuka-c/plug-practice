import 'package:global_plug/utilities/imports/general_import.dart';

class PaymentHistory extends StatelessWidget {
  const PaymentHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AppImages.gpsbg), fit: BoxFit.cover)),
        child: Scaffold(
            backgroundColor: AppColors.fortyPercentWhite,
            appBar: AppBar(
                backgroundColor: AppColors.transparent,
                elevation: 0,
                foregroundColor: AppColors.textColor3,
                title: Text('Payment History',
                    style: titleMid.copyWith(fontWeight: FontWeight.w500)))));
  }
}
