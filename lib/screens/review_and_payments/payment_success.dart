import 'package:global_plug/utilities/imports/general_import.dart';

class PaymentSuccess extends StatelessWidget {
  const PaymentSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AppImages.gpsbg), fit: BoxFit.cover)),
        child: PopScope(
            canPop: false,
            child: Scaffold(
                backgroundColor: AppColors.fortyPercentWhite,
                appBar: AppBar(
                    backgroundColor: AppColors.transparent,
                    foregroundColor: AppColors.primaryColor,
                    automaticallyImplyLeading: false,
                    actions: [
                      TextButton(
                          onPressed: () {
                            Get.offAllNamed(AppRoutes.nigerianPersonalInfo);
                          },
                          child: Text('Done',
                              style: titleMid.copyWith(
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.primaryColor)))
                    ]),
                body: Padding(
                    padding: EdgeInsets.fromLTRB(21.0.w, 138.0.h, 21.0.w, 0),
                    child: Center(
                        child: Column(children: [
                      SizedBox(
                          width: 119,
                          height: 110,
                          child: SvgPicture.asset(AppImages.completed)),
                      SizedBox(height: 28.4.h),
                      Text('Payment Success!',
                          style:
                              titleLarge.copyWith(fontWeight: FontWeight.w500)),
                      SizedBox(height: 10.0.h),
                      Text('Your payment has been successfully done.',
                          style:
                              bodyLarge.copyWith(color: AppColors.opacityText)),
                      SizedBox(height: 71.0.h),
                      SizedBox(
                          width: 302.0.w,
                          child: Text(
                              'Note: You will receive an appointment invite in your email and app once your payment is processed',
                              textAlign: TextAlign.center,
                              style: bodyTwelve.copyWith(
                                  color: AppColors.textColor2))),
                      SizedBox(height: 40.0.h),
                      ReceiptDownloadBtn(onTap: () {
                        Get.toNamed(AppRoutes.paymentReceipt);
                      }),
                      SizedBox(height: 40.0.h),
                      navbarHomeState
                    ]))))));
  }
}
