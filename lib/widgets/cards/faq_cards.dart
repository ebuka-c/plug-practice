import 'package:global_plug/utilities/imports/general_import.dart';

class FAQCards extends StatelessWidget {
  const FAQCards(
      {super.key,
      required this.image,
      required this.title,
      required this.action,
      required this.onActionTap});
  final String image, title, action;
  final Function() onActionTap;

  @override
  Widget build(BuildContext context) {
    return Card(
        surfaceTintColor: AppColors.primaryColor,
        child: SizedBox(
            height: 116.0.w,
            width: 155.0.h,
            child: Padding(
                padding: EdgeInsets.all(16.0.w),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                          width: 19.5.w,
                          height: 20.0.h,
                          child: SvgPicture.asset(image)),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(title,
                                style: bodyLarge.copyWith(
                                    fontFamily: '',
                                    color: AppColors.faintText)),
                            GestureDetector(
                              onTap: onActionTap,
                              child: Text(action,
                                  style: bodyIntermediate.copyWith(
                                      color: AppColors.primaryColor,
                                      fontWeight: FontWeight.w600)),
                            )
                          ])
                    ]))));
  }
}
