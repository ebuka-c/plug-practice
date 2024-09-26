import 'package:global_plug/utilities/imports/general_import.dart';

class PaymentMethodsWidget extends StatelessWidget {
  const PaymentMethodsWidget({
    super.key,
    required this.controller,
  });

  final ApplicationController controller;

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
        alignment: Alignment.centerLeft,
        scale: 0.98.w,
        child: Obx(
          () => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                RadioListTile(
                    shape: RoundedRectangleBorder(
                        side: const BorderSide(
                            color: AppColors.buttonBorder, width: 1),
                        borderRadius: BorderRadius.circular(6)),
                    tileColor: AppColors.colorWhite,
                    contentPadding: EdgeInsets.zero,
                    dense: true,
                    value: 1,
                    groupValue: controller.radioValue.value,
                    onChanged: (val) {
                      controller.radioValue.value = val as int;
                    },
                    onFocusChange: (value) {},
                    title: Text('Credit/Debit Card',
                        style: bodyIntermediate.copyWith(
                            fontFamily: 'OpenSans',
                            color: AppColors.opacityText))),
                //hide 1
                Visibility(
                    visible: controller.cardPaymentVisible.value,
                    child: Container(
                        width: double.infinity,
                        padding: EdgeInsets.fromLTRB(8.0.w, 16.0.h, 8.0.w, 0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CreditCardInputField(controller.cardNumber,
                                  title: 'CREDIT CARD NUMBER',
                                  hintText:
                                      'xxxx xxxx xxxx 8014'.toUpperCase()),
                              SizedBox(height: 20.43.h),
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                        width: 142.0.w,
                                        child: CreditCardInputField(
                                            controller.cardName,
                                            focusNode: controller.myFocusNode,
                                            keyboardType: TextInputType.name,
                                            title: 'CREDIT CARD NAME',
                                            textCapitalization:
                                                TextCapitalization.words,
                                            hintText: 'omeje faith sky'
                                                .toUpperCase())),
                                    SizedBox(
                                        width: 117.0.w,
                                        child: CreditCardInputField(
                                            controller.cvv,
                                            title: 'CVV',
                                            hintText: 'xxx'.toUpperCase()))
                                  ]),
                              SizedBox(height: 28.42.h),
                              SizedBox(
                                  width: 105.0.w,
                                  child: CreditCardInputField(
                                      controller.expiryDate,
                                      keyboardType: TextInputType.datetime,
                                      title: 'EXPIRY',
                                      hintText: '08/21'))
                            ]))),
                SizedBox(height: 5.0.h),
                GestureDetector(
                  onTap: () {
                    controller.isBankTransferVisible.value =
                        !controller.isBankTransferVisible.value;
                  },
                  child: RadioListTile(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6)),
                      tileColor: AppColors.colorWhite,
                      contentPadding: EdgeInsets.zero,
                      dense: true,
                      value: 2,
                      groupValue: controller.radioValue.value,
                      onChanged: (val) {
                        controller.radioValue.value = val as int;
                      },
                      title: Text('Bank Transfer',
                          style: bodyIntermediate.copyWith(
                              fontFamily: 'OpenSans',
                              color: AppColors.opacityText))),
                ),
                //hide 2
                Visibility(
                  visible: controller.isBankTransferVisible.value,
                  child: Container(
                      height: 200, width: double.infinity, color: Colors.amber),
                ),
                SizedBox(height: 5.0.h),
                RadioListTile(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6)),
                    tileColor: AppColors.colorWhite,
                    contentPadding: EdgeInsets.zero,
                    dense: true,
                    value: 3,
                    groupValue: controller.radioValue.value,
                    onChanged: (val) {
                      controller.radioValue.value = val as int;
                    },
                    title: Text('Stripe',
                        style: bodyIntermediate.copyWith(
                            fontFamily: 'OpenSans',
                            color: AppColors.opacityText))),
                //hide 3
                Visibility(
                  visible: controller.isStripeVisible.value,
                  child: Container(
                      height: 200, width: double.infinity, color: Colors.amber),
                ),
                SizedBox(height: 5.0.h),
                Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(15)),
                    child: RadioListTile(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6)),
                        tileColor: AppColors.colorWhite,
                        contentPadding: EdgeInsets.zero,
                        dense: true,
                        value: 4,
                        groupValue: controller.radioValue.value,
                        onChanged: (val) {
                          controller.radioValue.value = val as int;
                        },
                        title: Text('FIS WorldPay',
                            style: bodyIntermediate.copyWith(
                                fontFamily: 'OpenSans',
                                color: AppColors.opacityText)))),
                //hide 4
                Visibility(
                  visible: controller.isFISVisible.value,
                  child: Container(
                      height: 200, width: double.infinity, color: Colors.amber),
                ),
                SizedBox(height: 5.0.h),
              ]),
        ));
  }
}
