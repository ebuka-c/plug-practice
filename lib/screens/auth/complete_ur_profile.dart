import 'package:global_plug/utilities/imports/general_import.dart';

class CompleteUrProfile extends GetView<AuthController> {
  const CompleteUrProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
        canPop: false,
        child: Scaffold(
            extendBodyBehindAppBar: true,
            appBar: AppBar(
                backgroundColor: AppColors.colorWhite,
                elevation: 0,
                automaticallyImplyLeading: false,
                actions: [
                  TextButton(
                      onPressed: () =>
                          Get.toNamed(AppRoutes.nigerianPersonalInfo),
                      child: Text('Skip',
                          style: titleSmall.copyWith(
                              color: AppColors.primaryColor,
                              fontWeight: FontWeight.w600)))
                ]),
            body: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Padding(
                    padding:
                        EdgeInsets.fromLTRB(21.0.w, 105.0.h, 21.0.w, 33.0.h),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Complete your profile',
                              style: titleLarge.copyWith(
                                  color: AppColors.opacityText)),
                          SizedBox(height: 35.0.h),
                          Row(children: [
                            Container(
                                color: AppColors.primaryColor,
                                width: 28.0.w,
                                height: 4.0.h,
                                margin: EdgeInsets.only(
                                    left: 26.0.w, right: 18.0.w)),
                            Text('Profile Information',
                                style: titleMid.copyWith(
                                    color: AppColors.opacityText))
                          ]),
                          SizedBox(height: 23.0.h),
                          AuthTextField(
                              controller: controller.fullNameController,
                              textCapitalization: TextCapitalization.words,
                              labelText: 'Full Name'),
                          SizedBox(height: 17.0.h),
                          AuthTextField(
                              controller: controller.dobController,
                              labelText: 'Date of Birth',
                              keyboardType: TextInputType.datetime,
                              readOnly: true,
                              suffixIcon: IconButton(
                                  onPressed: () async {
                                    DateTime? pickedDate = await showDatePicker(
                                        context: context,
                                        initialDate: DateTime.now(),
                                        firstDate: DateTime.now().subtract(
                                            const Duration(days: 40000)),
                                        lastDate: DateTime.now(),
                                        builder: (context, child) {
                                          return Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: <Widget>[
                                                SizedBox(
                                                    height: 480.0.h,
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.87.w,
                                                    child: child)
                                              ]);
                                        });
                                    if (pickedDate != null) {
                                      String formattedDate =
                                          DateFormat('yyyy-MM-dd')
                                              .format(pickedDate);
                                      controller.dobController.text =
                                          formattedDate;
                                    } else {
                                      debugPrint("Date is not selected");
                                    }
                                  },
                                  icon: SvgPicture.asset(AppImages.calendarIcon,
                                      height: 24, width: 24))),
                          SizedBox(height: 17.0.h),
                          PhoneNumberField(
                              controller: controller.phoneNumController,
                              labelText:
                                  'Phone number must be accessible on WhatsApp'),
                          SizedBox(height: 17.0.h),
                          AuthTextField(
                              controller: controller.userEmailController,
                              labelText: 'Email'),
                          SizedBox(height: 17.0.h),
                          AuthTextField(
                              controller: controller.nationalityController,
                              textCapitalization: TextCapitalization.words,
                              labelText: 'Nationality'),
                          SizedBox(height: 17.0.h),
                          AuthTextField(
                              controller: controller.addressController,
                              textCapitalization: TextCapitalization.words,
                              labelText: 'Address'),
                          SizedBox(height: 70.0.h),
                          Row(children: [
                            Container(
                                color: AppColors.primaryColor,
                                width: 28.0.w,
                                height: 4.0.h,
                                margin: EdgeInsets.only(
                                    left: 26.0.w, right: 18.0.w)),
                            Text('Upload Required Documents',
                                style: titleMid.copyWith(
                                    color: AppColors.opacityText))
                          ]),
                          SizedBox(height: 30.0.h),
                          DocumentUploadWidget(
                              onTap: () async {
                                //click to select
                                final result =
                                    await FilePicker.platform.pickFiles();
                                // if (result==null) return;
                                // final file = result.files.first;
                                // controller.openFile(file);
                              },
                              title: 'Passport Size Photograph'),
                          SizedBox(height: 20.0.h),
                          DocumentUploadWidget(
                              onTap: () async {
                                //click to select
                                final result =
                                    await FilePicker.platform.pickFiles();
                              },
                              title: 'NIN Document'),
                          SizedBox(height: 20.0.h),
                          Center(
                              child: AppButton(
                                  onTap: () {},
                                  text: 'Click to Upload',
                                  width: 72.77.w,
                                  height: 19.72.h,
                                  textStyle: bodyEight.copyWith(
                                      color: AppColors.colorWhite,
                                      fontWeight: FontWeight.w300),
                                  radius: 5,
                                  isOutline: false,
                                  hasElevation: false)),
                          SizedBox(height: 75.0.h),
                          AppButton(
                              onTap: () {},
                              text: 'Continue',
                              isOutline: false,
                              hasElevation: true),
                          SizedBox(height: 40.0.h),
                          Center(
                              child: Image.asset(AppImages.logoImg,
                                  width: 95.0.w, height: 58.78.h))
                        ])))));
  }
}
