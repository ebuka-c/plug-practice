import 'package:global_plug/utilities/imports/general_import.dart';

class PaymentReceipt extends StatelessWidget {
  const PaymentReceipt({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: AppColors.transparent,
            foregroundColor: AppColors.primaryColor,
            elevation: 0),
        body: Padding(
            padding: EdgeInsets.fromLTRB(14.0.w, 21.0.h, 14.0.w, 0),
            child: Column(children: [
              Stack(children: [
                Stack(
                  children: [
                    Container(
                        width: double.infinity,
                        height: 582.0.h,
                        padding: EdgeInsets.symmetric(
                            horizontal: 24.0.w, vertical: 18.0.h),
                        decoration: BoxDecoration(
                            color: AppColors.colorWhite,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  offset: const Offset(0, 0),
                                  blurRadius: 15,
                                  spreadRadius: 0)
                            ],
                            borderRadius: BorderRadius.circular(15))),
//stack1
                    Align(
                        alignment: Alignment.center,
                        child: Opacity(
                            opacity: 0.08,
                            child: Container(
                                margin: EdgeInsets.only(top: 190.0.h),
                                child: Image.asset(AppImages.logoImg,
                                    width: 300, height: 300)))),

//stack2
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 24.0.w, vertical: 18.0.h),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Image.asset(AppImages.logoImg2,
                                        width: 55, height: 55),
                                    Container(
                                        width: 151.0.h,
                                        margin: EdgeInsets.only(bottom: 15.0.w),
                                        child: const Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              CompanyDetails(
                                                  text: 'Global Plug Services'),
                                              CompanyDetails(
                                                  text:
                                                      '123 Immigration Road, London, UK'),
                                              CompanyDetails(
                                                  text: '44 20 7946 0958 |'),
                                              CompanyDetails(
                                                  text:
                                                      'support@globalplugservices.com',
                                                  textColor:
                                                      AppColors.primaryColor)
                                            ]))
                                  ]),
                              const Divider(color: AppColors.dividerColor),
                              SizedBox(height: 4.0.h),
                              //
                              Center(
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                    Text('Amount Paid',
                                        style: bodyLarge.copyWith(
                                            color: AppColors.textColor2,
                                            fontWeight: FontWeight.w400)),
                                    Text('\$4,000',
                                        style: titleLarger.copyWith(
                                            color: AppColors.twelve,
                                            fontWeight: FontWeight.w600)),
                                    Text('Mar 22, 2023, 13:22:16',
                                        style: bodyEleven.copyWith(
                                            color: AppColors.disappearing,
                                            fontWeight: FontWeight.w400)),
                                    SizedBox(height: 11.0.h)
                                  ])),
                              const CustomDashedLine(),
                              SizedBox(height: 10.0.h),
                              Text('Tracking ID #:898271',
                                  style: bodyTwelve.copyWith(
                                      color: AppColors.twelve,
                                      fontWeight: FontWeight.w500)),
                              SizedBox(height: 11.0.h),
                              ConstrainedBox(
                                  constraints: const BoxConstraints(
                                      maxHeight: double.infinity),
                                  child: ListView.separated(
                                      itemCount: receiptDetails.length,
                                      shrinkWrap: true,
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      separatorBuilder: (context, index) =>
                                          SizedBox(height: 9.0.h),
                                      itemBuilder: (context, index) {
                                        return Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(receiptDetails[index]['key'],
                                                  style:
                                                      bodyIntermediate.copyWith(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: AppColors
                                                              .textColor4)),
                                              Text(receiptDetails[index]['val'],
                                                  style:
                                                      bodyIntermediate.copyWith(
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color:
                                                              AppColors.twelve))
                                            ]);
                                      })),
                              SizedBox(height: 10.0.h),
                              //transaction status
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('Payment Status',
                                        style: bodyIntermediate.copyWith(
                                            fontWeight: FontWeight.w400,
                                            color: AppColors.textColor5)),
                                    Text('Success',
                                        style: bodyTen.copyWith(
                                            fontWeight: FontWeight.w500,
                                            color: AppColors.txnSuccess))
                                  ]),
                              SizedBox(height: 37.0.h),
                              ReceiptDownloadBtn(
                                  onTap: () {
                                    successSnackbar('',
                                        duration: 4,
                                        altMessage: Row(children: [
                                          Text('Downloaded Successfully',
                                              style: bodyTwelve.copyWith(
                                                  fontWeight: FontWeight.w400)),
                                          SizedBox(width: 39.0.h),
                                          GestureDetector(
                                              onTap: () {},
                                              child: Text('Open',
                                                  style:
                                                      bodyIntermediate.copyWith(
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          color: AppColors
                                                              .txnSuccess)))
                                        ]),
                                        width: ScreenSize.screenWidth / 1.3,
                                        margin: EdgeInsets.only(
                                            bottom: ScreenSize.screenHeight /
                                                1.25.h));
                                  },
                                  height: 48,
                                  radius: 6,
                                  hasElevation: false,
                                  text: 'Download',
                                  childColor: AppColors.textColor2)
                            ]),
                      ),
                    ),
                  ],
                )
              ]),
              SizedBox(height: 15.0.h),
              //
              navbarHomeState
            ])));
  }
}

List<Map> receiptDetails = [
  {'key': 'Visa Type', 'val': 'Student Visa'},
  {'key': 'Traveler\'s Name', 'val': 'Omeje Faith'},
  {'key': 'Phone Number', 'val': '+2348149213332'},
  {'key': 'Country', 'val': 'Nigeria'},
  {'key': 'Destination Country', 'val': 'Canada'},
  {'key': 'Payment Method', 'val': 'Credit Card'}
];
