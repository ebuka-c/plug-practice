import 'package:global_plug/utilities/imports/general_import.dart';

class ResetPassword extends GetView<AuthController> {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AppImages.gpsbg), fit: BoxFit.cover)),
        child: Scaffold(
            backgroundColor: AppColors.fortyPercentWhite,
            extendBodyBehindAppBar: true,
            appBar: AppBar(
                backgroundColor: AppColors.transparent,
                elevation: 0,
                foregroundColor: AppColors.primaryColor),
            body: SingleChildScrollView(
                child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 20.0.w, vertical: 100.0.h),
                    child: Obx(() => Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Reset password',
                                  style: titleLarge.copyWith(
                                      fontWeight: FontWeight.w500)),
                              SizedBox(height: 30.0.h),
                              SizedBox(
                                  width: double.infinity,
                                  height: 50,
                                  child: Text(
                                      'Please use a combination you can easily remember.',
                                      style: bodyIntermediate.copyWith(
                                          color: AppColors.opacityText))),
                              //password
                              AuthTextField(
                                  controller: controller.newPasswordController,
                                  labelText: 'Enter New Password',
                                  keyboardType: TextInputType.visiblePassword,
                                  obscureText:
                                      controller.pswdSignUpObscure.value
                                          ? true
                                          : false,
                                  suffixIcon: GestureDetector(
                                      onTap: () {
                                        controller.pswdSignUpObscure.value =
                                            !controller.pswdSignUpObscure.value;
                                      },
                                      child: controller.pswdSignUpObscure.value
                                          ? const Icon(
                                              Icons.visibility_off_outlined,
                                              color: AppColors.textColor)
                                          : const Icon(
                                              Icons.visibility_outlined,
                                              color: AppColors.textColor))),
                              SizedBox(height: 31.0.h),
                              //confirm password
                              AuthTextField(
                                  controller:
                                      controller.confirmNewPasswordController,
                                  labelText: 'Confirm Password',
                                  keyboardType: TextInputType.visiblePassword,
                                  obscureText:
                                      controller.pswdSignUpConfirmObscure.value
                                          ? true
                                          : false,
                                  suffixIcon: GestureDetector(
                                      onTap: () {
                                        controller.pswdSignUpConfirmObscure
                                                .value =
                                            !controller
                                                .pswdSignUpConfirmObscure.value;
                                      },
                                      child: controller
                                              .pswdSignUpConfirmObscure.value
                                          ? const Icon(
                                              Icons.visibility_off_outlined,
                                              color: AppColors.textColor)
                                          : const Icon(
                                              Icons.visibility_outlined,
                                              color: AppColors.textColor))),
                              SizedBox(height: 200.0.h),
                              AppButton(
                                  onTap: () {
                                    Get.toNamed(
                                        AppRoutes.pswdSuccessfullyChanged);
                                  },
                                  text: 'Verify',
                                  isOutline: false,
                                  hasElevation: true),
                              SizedBox(height: 50.0.h),
                              Center(
                                  child: SizedBox(
                                      width: 95.0.w,
                                      height: 58.0.h,
                                      child: Image.asset(AppImages.logoImg))),
                              SizedBox(height: 15.0.h),

                              Center(
                                  child: RichText(
                                      textAlign: TextAlign.center,
                                      text: TextSpan(
                                          text: 'Terms of Use',
                                          style: bodyEleven.copyWith(
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.w700,
                                              color: AppColors.textColor),
                                          recognizer: TapGestureRecognizer()
                                            ..onTap = () {
                                              debugPrint('Terms of use"');
                                            },
                                          children: [
                                            TextSpan(
                                                text: ' and ',
                                                style: bodyEleven.copyWith(
                                                    fontFamily: 'Poppins',
                                                    color:
                                                        AppColors.opacityText,
                                                    fontWeight:
                                                        FontWeight.w500)),
                                            TextSpan(
                                                text: 'Privacy Policy',
                                                recognizer:
                                                    TapGestureRecognizer()
                                                      ..onTap = () {
                                                        debugPrint(
                                                            'privacy policy');
                                                      })
                                          ])))
                            ]))))));
  }
}
