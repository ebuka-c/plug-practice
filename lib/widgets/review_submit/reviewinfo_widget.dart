import 'package:global_plug/utilities/imports/general_import.dart';

class ReviewInfo extends StatelessWidget {
  const ReviewInfo(
      {super.key, required this.dataList, this.onEditTap, required this.title});

  final List<Map> dataList;
  final Function()? onEditTap;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      ConstrainedBox(
          constraints: const BoxConstraints(maxHeight: double.infinity),
          child: SizedBox(
              width: double.infinity,
              child: Column(children: [
                Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
                  Container(
                      color: AppColors.primaryColor,
                      width: 28.0.w,
                      height: 4.0.h,
                      margin: EdgeInsets.only(left: 4.0.w, right: 16.0.w)),
                  Text(title,
                      style: titleSmall.copyWith(
                          fontWeight: FontWeight.w500,
                          color: AppColors.textColor2))
                ]),
                SizedBox(height: 20.0.h),
                ConstrainedBox(
                  constraints: const BoxConstraints(maxHeight: double.infinity),
                  child: ListView.separated(
                      itemCount: dataList.length,
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return Row(children: [
                          Container(
                              padding: const EdgeInsets.only(left: 2),
                              width: 140.0.w,
                              child: Text(dataList[index]['key'],
                                  style: bodyTwelve.copyWith(
                                      color: AppColors.opacityText))),
                          SizedBox(width: 10.0.w),
                          Text(dataList[index]['value'],
                              style: bodyTwelve.copyWith(
                                  color: AppColors.opacityText))
                        ]);
                      },
                      separatorBuilder: (context, index) =>
                          SizedBox(height: 7.8.h)),
                )
              ]))),
      Positioned(
          top: 3,
          left: 326.0.h,
          child: GestureDetector(
              onTap: onEditTap,
              child: Icon(Iconsax.edit,
                  weight: 8, color: AppColors.textColor2, size: 20.0.h)))
    ]);
  }
}
