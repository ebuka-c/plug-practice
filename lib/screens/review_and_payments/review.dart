import 'package:global_plug/utilities/imports/general_import.dart';

class PaymentReview extends GetView<ApplicationController> {
  const PaymentReview({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(AppImages.gpsbg), fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: AppColors.fortyPercentWhite,
        body: Padding(
            padding: EdgeInsets.symmetric(vertical: 88.0.h, horizontal: 19.0.w),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                  height: 56.0.h,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: const LinearGradient(colors: [
                        AppColors.primaryDark,
                        AppColors.primaryColor
                      ], stops: [
                        0.35,
                        1
                      ])),
                  child: Center(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                        Padding(
                          padding: EdgeInsets.only(left: 25.0.w),
                          child: Text('Nigeria Passport',
                              style: titleMid.copyWith(
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.colorWhite)),
                        )
                      ]))),
              SizedBox(height: 16.0.h),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0.w),
                  child: Obx(() => Column(children: [
                        Container(
                            height: 125.0.h,
                            constraints: const BoxConstraints(
                                maxHeight: double.infinity),
                            child: ListView.separated(
                                itemCount: nigeriaPassportReview.length,
                                itemBuilder: (context, index) {
                                  return Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(children: [
                                          SizedBox(
                                              height: 20.0.h,
                                              width: 20.0.h,
                                              child:
                                                  nigeriaPassportReview[index]
                                                      ['child']),
                                          SizedBox(width: 12.0.w),
                                          Text(
                                              nigeriaPassportReview[index]
                                                  ['key'],
                                              style: bodyIntermediate.copyWith(
                                                  fontWeight: FontWeight.w500,
                                                  color: AppColors.textColor2))
                                        ]),
                                        Text(
                                            nigeriaPassportReview[index]
                                                ['value'],
                                            style: bodyIntermediate.copyWith(
                                                fontWeight: FontWeight.w700,
                                                color: AppColors.textColor2))
                                      ]);
                                },
                                separatorBuilder: (context, index) =>
                                    SizedBox(height: 18.0.h))),
                        SizedBox(height: 17.0.h),

                        //
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(children: [
                                const Icon(Iconsax.people,
                                    size: 20, color: AppColors.textColor2),
                                SizedBox(width: 12.0.w),
                                Text('Travellers',
                                    style: bodyIntermediate.copyWith(
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.textColor2))
                              ]),
                              Row(children: [
                                IncrementDecrementWidget(
                                    onTap: () {
                                      controller.decrQty();
                                    },
                                    icon: Icons.remove),
                                Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10.0),
                                    child: Text(
                                        controller.qtyCounter.value.toString(),
                                        style: bodyIntermediate.copyWith(
                                            fontWeight: FontWeight.w700,
                                            color: AppColors.textColor2))),
                                IncrementDecrementWidget(
                                    onTap: () {
                                      controller.incrQty();
                                    },
                                    icon: Icons.add)
                              ])
                            ]),
                        SizedBox(height: 44.0.h),
                        Divider(color: AppColors.greyColor, thickness: 0.5),
                        SizedBox(height: 25.0.h),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Total amount',
                                        style: titleMid.copyWith(
                                            fontWeight: FontWeight.w600,
                                            color: AppColors.primaryColor)),
                                    SizedBox(height: 8.0.h),
                                    SizedBox(
                                        width: 132.0.w,
                                        child: Text(
                                            'Includes all government related fees & taxes',
                                            style: bodyEight.copyWith(
                                                fontWeight: FontWeight.w600,
                                                color: AppColors.textColor2)))
                                  ]),
                              Text(
                                  '\$${controller.totalAmount.value * controller.qtyCounter.value}',
                                  style: titleLarge.copyWith(
                                      fontWeight: FontWeight.w700,
                                      color: AppColors.primaryColor))
                            ])
                      ]))),
              SizedBox(height: 168.0.h),
              AppButton(
                  onTap: () {
                    Get.toNamed(AppRoutes.paymentScreen);
                  },
                  text: 'Continue Payment',
                  isOutline: false,
                  hasElevation: true)
            ])),
      ),
    );
  }
}

class IncrementDecrementWidget extends StatelessWidget {
  const IncrementDecrementWidget({super.key, this.onTap, required this.icon});
  final Function()? onTap;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          height: 20,
          width: 20,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.transparent,
              border: Border.all(color: AppColors.primaryColor)),
          child: Center(
              child: Icon(icon, color: AppColors.primaryColor, size: 13))),
    );
  }
}
