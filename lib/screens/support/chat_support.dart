import 'package:global_plug/utilities/imports/general_import.dart';

class ChatSupport extends StatelessWidget {
  ChatSupport({super.key});
  final _chatController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Support', style: titleLarge),
            centerTitle: true,
            backgroundColor: AppColors.transparent,
            foregroundColor: AppColors.textColor,
            elevation: 0),
        body: Stack(children: [
          SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Padding(
                  padding: EdgeInsets.only(top: 161.0.h),
                  child: Center(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                        SvgPicture.asset(AppImages.empty,
                            width: 165.0.w, height: 165.0.h),
                        SizedBox(height: 46.0.h),
                        SizedBox(
                            width: 230.0.w,
                            child: Text(noMessagesYet,
                                textAlign: TextAlign.center,
                                style: bodyTwelve.copyWith(
                                    color: AppColors.opacityText)))
                      ])))),

          //
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  width: ScreenSize.screenWidth,
                  height: 90.0.h,
                  padding: EdgeInsets.only(
                      top: 21.0.h, bottom: 21.0.h, right: 30.0.w),
                  decoration: BoxDecoration(
                      color: AppColors.colorWhite,
                      border: Border.all(color: AppColors.textfieldFill)),
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: SizedBox(
                          width: 306.0.w,
                          height: 42.0.h,
                          child: TextField(
                              controller: _chatController,
                              keyboardType: TextInputType.multiline,
                              onTapOutside: (PointerDownEvent event) {
                                FocusManager.instance.primaryFocus?.unfocus();
                              },
                              style: bodyLarge,
                              textCapitalization: TextCapitalization.sentences,
                              autocorrect: true,
                              decoration: InputDecoration(
                                  hintText: 'Message...',
                                  hintStyle: bodyLarge.copyWith(
                                      color: AppColors.textColor4),
                                  fillColor: AppColors.textfieldFill2,
                                  filled: true,
                                  contentPadding: const EdgeInsets.only(
                                      left: 15, top: 0, bottom: 0),
                                  border: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Colors.transparent),
                                      borderRadius: BorderRadius.circular(24)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Colors.transparent),
                                      borderRadius: BorderRadius.circular(24)),
                                  disabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Colors.transparent),
                                      borderRadius: BorderRadius.circular(24)),
                                  focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: Colors.transparent),
                                      borderRadius: BorderRadius.circular(24)),
                                  suffixIcon: Container(
                                    width: 18.0.w,
                                    height: 6.0.h,
                                    padding: EdgeInsets.all(10.0.h),
                                    child: GestureDetector(
                                        onTap: () {
                                          FocusManager.instance.primaryFocus
                                              ?.unfocus();
                                          _chatController.clear();
                                        },
                                        child: SvgPicture.asset(
                                            AppImages.sendMsg)),
                                  )))))))
        ]));
  }
}
