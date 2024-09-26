import 'package:global_plug/utilities/imports/general_import.dart';

class PaymentHistoryEmpty extends StatelessWidget {
  const PaymentHistoryEmpty({super.key});

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
                  style: titleMid.copyWith(fontWeight: FontWeight.w500))),
          body: Stack(children: [
            Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 21.0.w, vertical: 95.0.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      //
                      SizedBox(
                          width: 240.0.w,
                          height: 240.0.h,
                          child: SvgPicture.asset(AppImages.noPaymentsMade)),
                      SizedBox(height: 20.0.h),
                      Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25.0.w),
                          child: Text(
                              textAlign: TextAlign.center,
                              'No Payment Record yet!',
                              style: bodyTwelve.copyWith(
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.emptyStateText))),
                      SizedBox(height: 140.0.h),
                      AppButton(
                          onTap: () {},
                          isOutline: false,
                          hasElevation: true,
                          text: 'Start New Application')
                    ])),
            Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 21.0.w),
                    child: navbarApplicationsState))
          ]),
        ));
  }
}
