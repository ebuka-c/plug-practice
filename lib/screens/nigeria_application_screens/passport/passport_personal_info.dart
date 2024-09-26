import 'package:global_plug/utilities/imports/general_import.dart';

final GlobalKey<ScaffoldState> drawerOpen = GlobalKey();

class PersonalInfo extends GetView<ApplicationController> {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
        canPop: false,
        child: Scaffold(
            key: drawerOpen,
            drawerEnableOpenDragGesture: false,
            endDrawer: CustomEndDrawer(
                onTap: () => drawerOpen.currentState!.closeEndDrawer()),
            body: Stack(children: [
              CustomScrollView(
                  physics: const BouncingScrollPhysics(),
                  slivers: [
                    sliverAppBar,
                    SliverList(
                        delegate: SliverChildListDelegate([
                      Padding(
                          padding: EdgeInsets.fromLTRB(
                              19.0.w, 47.0.h, 19.0.w, 100.0.h),
                          child: Obx(
                            () => Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Nigeria Passport',
                                      style: titleLarge.copyWith(
                                          color: AppColors.primaryColor)),
                                  SizedBox(height: 10.0.h),
                                  SizedBox(
                                      width: 280.0.w,
                                      child: Text(
                                          'Complete the form to start your visa application process',
                                          style: bodyTen.copyWith(
                                              color: AppColors.opacityText,
                                              fontWeight: FontWeight.w500))),
                                  SizedBox(height: 27.0.h),
                                  Row(children: [
                                    Container(
                                        color: AppColors.primaryColor,
                                        width: 28.0.w,
                                        height: 4.0.h,
                                        margin: EdgeInsets.only(
                                            left: 4.0.w, right: 18.0.w)),
                                    Text('Personal Information',
                                        style: titleMid.copyWith(
                                            color: AppColors.textColor2))
                                  ]),
                                  SizedBox(height: 15.0.h),
                                  ApplicationTextField(
                                      title: 'Email',
                                      keyboardType: TextInputType.emailAddress,
                                      controller: controller.emailController),
                                  SizedBox(height: 13.0.h),
                                  ApplicationTextField(
                                      title: 'NIN',
                                      keyboardType: TextInputType.number,
                                      inputFormatters: [
                                        LengthLimitingTextInputFormatter(11),
                                        FilteringTextInputFormatter.digitsOnly
                                      ],
                                      controller: controller.ninController),
                                  SizedBox(height: 13.0.h),
                                  // Type of Application
                                  RadioSelectableInput(
                                      title: 'Type of Application',
                                      options: [
                                        CustomRadioTile(
                                            value: 1,
                                            groupValue:
                                                controller.schEmployment.value,
                                            onChanged: (val) {
                                              controller.schEmployment.value =
                                                  val as int;
                                            },
                                            title:
                                                'Applying for fresh passport'),
                                        CustomRadioTile(
                                            value: 2,
                                            groupValue:
                                                controller.schEmployment.value,
                                            onChanged: (val) {
                                              controller.schEmployment.value =
                                                  val as int;
                                            },
                                            title: 'Renew/Re-issue Passport'),
                                        CustomRadioTile(
                                            value: 3,
                                            groupValue:
                                                controller.schEmployment.value,
                                            onChanged: (val) {
                                              controller.schEmployment.value =
                                                  val as int;
                                            },
                                            title: 'Lost Passport'),
                                        CustomRadioTile(
                                            value: 4,
                                            groupValue:
                                                controller.schEmployment.value,
                                            onChanged: (val) {
                                              controller.schEmployment.value =
                                                  val as int;
                                            },
                                            title: 'Damaged Passport'),
                                        CustomRadioTile(
                                            value: 5,
                                            groupValue:
                                                controller.schEmployment.value,
                                            onChanged: (val) {
                                              controller.schEmployment.value =
                                                  val as int;
                                            },
                                            title: 'Change of Data')
                                      ]),

                                  SizedBox(height: 13.0.h),
                                  // Booklet Type
                                  RadioSelectableInput(
                                      title: 'Booklet Type',
                                      options: [
                                        CustomRadioTile(
                                            value: 1,
                                            groupValue:
                                                controller.schEmployment.value,
                                            onChanged: (val) {
                                              controller.schEmployment.value =
                                                  val as int;
                                            },
                                            title: '32 Pages'),
                                        CustomRadioTile(
                                            value: 2,
                                            groupValue:
                                                controller.schEmployment.value,
                                            onChanged: (val) {
                                              controller.schEmployment.value =
                                                  val as int;
                                            },
                                            title: '64 Pages')
                                      ]),

                                  SizedBox(height: 13.0.h),
                                  // Validity
                                  RadioSelectableInput(
                                      title: 'Validity',
                                      options: [
                                        CustomRadioTile(
                                            value: 1,
                                            groupValue:
                                                controller.schEmployment.value,
                                            onChanged: (val) {
                                              controller.schEmployment.value =
                                                  val as int;
                                            },
                                            title: '10 Years'),
                                        CustomRadioTile(
                                            value: 2,
                                            groupValue:
                                                controller.schEmployment.value,
                                            onChanged: (val) {
                                              controller.schEmployment.value =
                                                  val as int;
                                            },
                                            title: '5 Years')
                                      ]),

                                  SizedBox(height: 13.0.h),
                                  ApplicationTextField(
                                      title: 'Passport Number',
                                      controller:
                                          controller.passportNumController),
                                  SizedBox(height: 13.0.h),
                                  // Title
                                  RadioSelectableInput(
                                      title: 'Validity',
                                      options: [
                                        CustomRadioTile(
                                            value: 1,
                                            groupValue:
                                                controller.schEmployment.value,
                                            onChanged: (val) {
                                              controller.schEmployment.value =
                                                  val as int;
                                            },
                                            title: 'Miss'),
                                        CustomRadioTile(
                                            value: 2,
                                            groupValue:
                                                controller.schEmployment.value,
                                            onChanged: (val) {
                                              controller.schEmployment.value =
                                                  val as int;
                                            },
                                            title: 'Mrs'),
                                        CustomRadioTile(
                                            value: 3,
                                            groupValue:
                                                controller.schEmployment.value,
                                            onChanged: (val) {
                                              controller.schEmployment.value =
                                                  val as int;
                                            },
                                            title: 'Mr'),
                                      ]),

                                  SizedBox(height: 13.0.h),
                                  ApplicationTextField(
                                      title: 'Surname',
                                      keyboardType: TextInputType.name,
                                      textCapitalization:
                                          TextCapitalization.words,
                                      controller:
                                          controller.surnameNumController),
                                  SizedBox(height: 13.0.h),
                                  ApplicationTextField(
                                      title: 'Date of Birth',
                                      readOnly: true,
                                      hintText: 'yyyy-mm-dd',
                                      controller: controller.dobController,
                                      suffixIcon: IconButton(
                                          onPressed: () async {
                                            DateTime? pickedDate =
                                                await showDatePicker(
                                                    context: context,
                                                    initialDate: DateTime.now(),
                                                    firstDate: DateTime.now()
                                                        .subtract(
                                                            const Duration(
                                                                days: 40000)),
                                                    lastDate: DateTime.now(),
                                                    builder: (context, child) {
                                                      return Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: <Widget>[
                                                            SizedBox(
                                                                height: 480.0.h,
                                                                width: MediaQuery.of(
                                                                            context)
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
                                              debugPrint(
                                                  "Date is not selected");
                                            }
                                          },
                                          icon: SvgPicture.asset(
                                              AppImages.calendarIcon,
                                              height: 26,
                                              width: 26))),
                                  SizedBox(height: 13.0.h),
                                  ApplicationTextField(
                                      title: 'Place of Birth',
                                      textCapitalization:
                                          TextCapitalization.words,
                                      controller:
                                          controller.placeOfBirthController),
                                  SizedBox(height: 13.0.h),
                                  // Marital Status
                                  RadioSelectableInput(
                                      title: 'Marital Status',
                                      options: [
                                        CustomRadioTile(
                                            value: 1,
                                            groupValue:
                                                controller.schEmployment.value,
                                            onChanged: (val) {
                                              controller.schEmployment.value =
                                                  val as int;
                                            },
                                            title: 'Single'),
                                        CustomRadioTile(
                                            value: 2,
                                            groupValue:
                                                controller.schEmployment.value,
                                            onChanged: (val) {
                                              controller.schEmployment.value =
                                                  val as int;
                                            },
                                            title: 'Married'),
                                        CustomRadioTile(
                                            value: 3,
                                            groupValue:
                                                controller.schEmployment.value,
                                            onChanged: (val) {
                                              controller.schEmployment.value =
                                                  val as int;
                                            },
                                            title: 'Divorced'),
                                        CustomRadioTile(
                                            value: 4,
                                            groupValue:
                                                controller.schEmployment.value,
                                            onChanged: (val) {
                                              controller.schEmployment.value =
                                                  val as int;
                                            },
                                            title: 'Widowed'),
                                        CustomRadioTile(
                                            value: 5,
                                            groupValue:
                                                controller.schEmployment.value,
                                            onChanged: (val) {
                                              controller.schEmployment.value =
                                                  val as int;
                                            },
                                            title: 'Separated')
                                      ]),

                                  SizedBox(height: 13.0.h),
                                  ApplicationTextField(
                                      title: 'Occupation',
                                      textCapitalization:
                                          TextCapitalization.words,
                                      controller:
                                          controller.occupationController),
                                  SizedBox(height: 13.0.h),
                                  ApplicationTextField(
                                      title: 'Mother\'s Maiden Name',
                                      textCapitalization:
                                          TextCapitalization.words,
                                      keyboardType: TextInputType.name,
                                      controller:
                                          controller.maidenNameController),
                                  SizedBox(height: 18.0.h),
                                  Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        GestureDetector(
                                            onTap: () => controller.clearForm(),
                                            child: Text('Clear form',
                                                style: bodyEleven.copyWith(
                                                    fontFamily: '',
                                                    decoration: TextDecoration
                                                        .underline,
                                                    decorationColor:
                                                        AppColors.primaryColor,
                                                    color: AppColors
                                                        .primaryColor))),
                                        SizedBox(width: 3.0.w)
                                      ]),
                                  SizedBox(height: 46.0.h),
                                  Center(
                                      child: Column(children: [
                                    AppButton(
                                        onTap: () {
                                          Get.toNamed(AppRoutes.ukContactInfo);
                                        },
                                        text: 'Next',
                                        height: 23.0.w,
                                        width: 63.0.h,
                                        radius: 3,
                                        textStyle: bodyTwelve.copyWith(
                                            fontWeight: FontWeight.w500,
                                            color: AppColors.colorWhite),
                                        isOutline: false,
                                        hasElevation: false),
                                    SizedBox(height: 31.0.h),
                                    SvgPicture.asset(AppImages.progress1,
                                        width: 108.0.w, height: 7.0.h),
                                  ]))
                                ]),
                          ))
                    ]))
                  ]),
              const DrawerOpener(),
              //navigation bar
              // Align(
              //     alignment: Alignment.bottomCenter,
              //     child: Padding(
              //         padding: EdgeInsets.symmetric(horizontal: 21.0.w),
              //         child: navbarHomeState))
            ]),
            bottomNavigationBar: Padding(
                padding: EdgeInsets.fromLTRB(21.0.w, 0, 21.0.w, 0),
                child: navbarHomeState)));
  }
}
