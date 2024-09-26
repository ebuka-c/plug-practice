import 'package:global_plug/utilities/imports/general_import.dart';

class FAQScreen extends StatelessWidget {
  const FAQScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('FAQ', style: titleLarge),
            centerTitle: true,
            backgroundColor: AppColors.transparent,
            elevation: 0),
        body: Stack(children: [
          SingleChildScrollView(
              child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: 31.0.w, vertical: 24.0.h),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('How can we help you?', style: titleLarge),
                        SizedBox(height: 15.0.h),
                        ApplicationTextField(
                            title: '',
                            height: 42.0.h,
                            borderRadius: 8,
                            borderSide: BorderSide.none,
                            hintText: 'Enter your keyword',
                            fillColor: AppColors.textfieldFill2,
                            prefixIcon: const Icon(Iconsax.search_normal,
                                color: AppColors.textColor),
                            hintColor: AppColors.cardInputFieldHint),
                        SizedBox(height: 31.0.h),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FAQCards(
                                  onActionTap: () => null,
                                  image: AppImages.contactUs,
                                  title: 'Contact Us',
                                  action: 'View details'),
                              FAQCards(
                                  onActionTap: () =>
                                      Get.toNamed(AppRoutes.chatSupport),
                                  image: AppImages.messageUs,
                                  title: 'Chat with us?',
                                  action: 'Go to message')
                            ]),
                        SizedBox(height: 30.0.h),
                        Text('Top Questions',
                            style: titleMid.copyWith(
                                fontWeight: FontWeight.w500,
                                color: AppColors.colorBlack)),
                        SizedBox(height: 20.0.h),
                        ConstrainedBox(
                          constraints:
                              const BoxConstraints(maxHeight: double.infinity),
                          child: ListView.separated(
                              shrinkWrap: true,
                              itemCount: faq.length,
                              physics: const NeverScrollableScrollPhysics(),
                              itemBuilder: (context, index) {
                                return TopQuestionsBox(
                                  question: faq[index]['question'],
                                  answer: faq[index]['answer'],
                                  icon: faq[index]['symbol'],
                                );
                              },
                              separatorBuilder: (context, index) =>
                                  SizedBox(height: 16.0.h)),
                        )
                      ]))),

          //
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 21.0.w),
                  child: navbarSupportState))
        ]));
  }
}
