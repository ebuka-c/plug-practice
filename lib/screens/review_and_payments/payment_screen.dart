import 'package:global_plug/utilities/imports/general_import.dart';

class PaymentScreen extends GetView<ApplicationController> {
  const PaymentScreen({super.key});

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
                foregroundColor: AppColors.primaryColor,
                elevation: 0,
                title: Text(
                  'Payment',
                  style: titleLarge.copyWith(
                      color: AppColors.primaryColor,
                      fontWeight: FontWeight.w600),
                )),
            body: SingleChildScrollView(
                child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: 21.0.w, vertical: 26.0.h),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                        width: 300,
                        child: Text(
                            'Securely complete your payment to proceed with your visa application',
                            style: bodyTwelve.copyWith(
                                color: AppColors.opacityText))),
                    SizedBox(height: 31.0.h),
                    Text('Payment Method',
                        style: titleSmall.copyWith(
                            fontWeight: FontWeight.w500,
                            color: AppColors.textColor2)),
                    //
                    PaymentMethodsWidget(controller: controller),
                    SizedBox(height: 8.0.h),
                    //

                    SizedBox(height: 100.0.h),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Transform.scale(
                          scale: 0.75,
                          child: SizedBox(
                              height: 30,
                              width: 30,
                              child: Obx(
                                () => Checkbox(
                                    checkColor: AppColors.primaryColor,
                                    value: controller.rememberMe.value,
                                    onChanged: (value) {
                                      controller.rememberMe.value = value!;
                                    }),
                              ))),
                      Text("I agree tho the Terms of use and privacy policy",
                          style: bodyTen.copyWith(color: AppColors.textColor))
                    ]),
                    SizedBox(height: 22.0.h),
                    Obx(
                      () => AppButton(
                          onTap: () {
                            if (controller.rememberMe.value) {
                              Get.toNamed(AppRoutes.paymentSuccess);
                              successSnackbar(
                                  'Your payment has been made successfully',
                                  margin: EdgeInsets.only(
                                      bottom:
                                          ScreenSize.screenHeight / 1.21.h));
                            }
                          },
                          text: 'Pay Now',
                          btnColor: !controller.rememberMe.value
                              ? AppColors.primaryColor.withOpacity(0.5)
                              : null,
                          isOutline: false,
                          hasElevation:
                              !controller.rememberMe.value ? false : true),
                    )
                  ]),
            ))));
  }
}
