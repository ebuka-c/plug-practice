import 'package:global_plug/utilities/imports/general_import.dart';

class ResponseSubmitted extends StatelessWidget {
  const ResponseSubmitted({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AppImages.gpsbg), fit: BoxFit.cover)),
        child: Scaffold(
            extendBodyBehindAppBar: true,
            backgroundColor: AppColors.fortyPercentWhite,
            appBar: AppBar(
                backgroundColor: AppColors.transparent,
                elevation: 0,
                foregroundColor: AppColors.primaryColor,
                title: Text('back',
                    style: titleLarge.copyWith(color: AppColors.primaryColor))),
            body: Padding(
                padding: EdgeInsets.fromLTRB(20.0.w, 206.0.h, 20.0.w, 0.0.h),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                          child: SizedBox(
                              height: 200.0.h,
                              width: 200.0.h,
                              child: SvgPicture.asset(AppImages.completed))),
                      SizedBox(height: 49.51.h),
                      Center(
                          child: SizedBox(
                              width: 231.0.w,
                              child: Expanded(
                                  child: Text('Response Submitted Successfully',
                                      textAlign: TextAlign.center,
                                      style: titleSmall.copyWith(
                                          fontWeight: FontWeight.w400,
                                          color: AppColors.opacityText))))),
                      SizedBox(height: 102.0.h),
                      AppButton(
                          onTap: () {
                            Get.offAllNamed(AppRoutes.paymentReview);
                          },
                          text: 'Proceed to Payment',
                          isOutline: false,
                          hasElevation: true),
                      const Spacer(),
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                        SizedBox(
                            height: 31,
                            width: 31,
                            child: SvgPicture.asset(AppImages.helpline))
                      ]),
                      navbarHomeState
                    ]))));
  }
}
