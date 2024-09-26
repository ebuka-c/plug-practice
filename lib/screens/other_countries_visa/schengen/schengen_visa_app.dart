import 'package:global_plug/utilities/imports/general_import.dart';

class SchengenVisaApp extends GetView<ApplicationController> {
  const SchengenVisaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // key: drawerOpen,
        // drawerEnableOpenDragGesture: false,
        endDrawer: CustomEndDrawer(
            onTap: () => drawerOpen.currentState!.closeEndDrawer()),
        body: Stack(children: [
          CustomScrollView(physics: const BouncingScrollPhysics(), slivers: [
            sliverAppBar,
            SliverList(
                delegate: SliverChildListDelegate([
              Padding(
                  padding: EdgeInsets.fromLTRB(19.0.w, 47.0.h, 19.0.w, 100.0.h),
                  child: Obx(
                    () => Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                GestureDetector(
                                    onTap: () {},
                                    child: Text('Save & continue',
                                        style: bodyIntermediate.copyWith(
                                            color: AppColors.primaryColor)))
                              ]),
                          SizedBox(height: 10.0.h),
                          Text('Schengen Visa',
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
                          const ApplicationTextField(
                              title: 'Email Address',
                              keyboardType: TextInputType.emailAddress),
                          SizedBox(height: 13.0.h),
                          ApplicationTextField(
                              title: 'First Name',
                              keyboardType: TextInputType.name,
                              textCapitalization: TextCapitalization.words,
                              controller: controller.titleController),
                          SizedBox(height: 13.0.h),
                          ApplicationTextField(
                              title: 'Middle Name',
                              keyboardType: TextInputType.name,
                              textCapitalization: TextCapitalization.words,
                              controller: controller.surnameNumController),
                          SizedBox(height: 13.0.h),
                          ApplicationTextField(
                              title: 'Surname',
                              textCapitalization: TextCapitalization.words,
                              controller: controller.passportNumController),
                          SizedBox(height: 13.0.h),
                          const ApplicationTextField(
                              title: 'Mobile Phone Number (UK)',
                              textCapitalization: TextCapitalization.words),
                          SizedBox(height: 13.0.h),
                          const ApplicationTextField(
                              textCapitalization: TextCapitalization.words,
                              title: 'Address 1'),
                          SizedBox(height: 13.0.h),
                          const ApplicationTextField(
                              textCapitalization: TextCapitalization.words,
                              title: 'Address 2'),
                          SizedBox(height: 13.0.h),
                          const ApplicationTextField(
                              title: 'Postal Code',
                              keyboardType: TextInputType.number,
                              textCapitalization: TextCapitalization.words),
                          SizedBox(height: 13.0.h),
                          ApplicationTextField(
                              title: 'City/Town',
                              keyboardType: TextInputType.phone,
                              controller: controller.occupationController),
                          SizedBox(height: 13.0.h),
                          //GENDER

                          RadioSelectableInput(title: 'Gender', options: [
                            CustomRadioTile(
                                value: 1,
                                groupValue: controller.schGenderValue.value,
                                onChanged: (val) {
                                  controller.schGenderValue.value = val as int;
                                },
                                title: 'Male'),
                            CustomRadioTile(
                                value: 2,
                                groupValue: controller.schGenderValue.value,
                                onChanged: (val) {
                                  controller.schGenderValue.value = val as int;
                                },
                                title: 'Female'),
                            CustomRadioTile(
                                value: 3,
                                groupValue: controller.schGenderValue.value,
                                onChanged: (val) {
                                  controller.schGenderValue.value = val as int;
                                },
                                title: 'Prefer not to say'),
                          ]),
                          //EMPLOYMENT
                          RadioSelectableInput(
                              title: 'Employment Status',
                              options: [
                                CustomRadioTile(
                                    value: 1,
                                    groupValue: controller.schEmployment.value,
                                    onChanged: (val) {
                                      controller.schEmployment.value =
                                          val as int;
                                    },
                                    title: 'Employed'),
                                CustomRadioTile(
                                    value: 2,
                                    groupValue: controller.schEmployment.value,
                                    onChanged: (val) {
                                      controller.schEmployment.value =
                                          val as int;
                                    },
                                    title: 'Student'),
                                CustomRadioTile(
                                    value: 3,
                                    groupValue: controller.schEmployment.value,
                                    onChanged: (val) {
                                      controller.schEmployment.value =
                                          val as int;
                                    },
                                    title: 'Self employed'),
                                CustomRadioTile(
                                    value: 4,
                                    groupValue: controller.schEmployment.value,
                                    onChanged: (val) {
                                      controller.schEmployment.value =
                                          val as int;
                                    },
                                    title: 'Unemployed'),
                              ]),

                          const ApplicationTextField(
                              title: 'Company/University Name',
                              textCapitalization: TextCapitalization.words),
                          SizedBox(height: 13.0.h),
                          const ApplicationTextField(
                              title: 'Employment/University Address 1',
                              textCapitalization: TextCapitalization.words),
                          SizedBox(height: 13.0.h),
                          const ApplicationTextField(
                              title: 'Employment/University Address 2',
                              textCapitalization: TextCapitalization.words),
                          SizedBox(height: 13.0.h),
                          const ApplicationTextField(
                              title: 'Employment/University Postcode',
                              keyboardType: TextInputType.number,
                              textCapitalization: TextCapitalization.words),
                          SizedBox(height: 13.0.h),
                          const ApplicationTextField(
                            title: 'Employment/Student City',
                            textCapitalization: TextCapitalization.words,
                          ),
                          SizedBox(height: 13.0.h),
                          const ApplicationTextField(
                              title: 'Company/University Contact Number',
                              keyboardType: TextInputType.phone,
                              textCapitalization: TextCapitalization.words),
                          SizedBox(height: 13.0.h),
                          const ApplicationTextField(
                              title: 'Preferred travelling date',
                              keyboardType: TextInputType.datetime,
                              textCapitalization: TextCapitalization.words),
                          SizedBox(height: 13.0.h),
                          const ApplicationTextField(
                              title: 'BRP number',
                              keyboardType: TextInputType.number),
                          SizedBox(height: 13.0.h),
                          const ApplicationTextField(
                              title: 'Passport Number',
                              keyboardType: TextInputType.number),
                          SizedBox(height: 18.0.h),
                          RadioSelectableInput(
                              title:
                                  'Any previous Schengen stamp or Biometric data if applied',
                              options: [
                                CustomRadioTile(
                                    value: 1,
                                    groupValue: controller.schEmployment.value,
                                    onChanged: (val) {
                                      controller.schEmployment.value =
                                          val as int;
                                    },
                                    title: 'Yes'),
                                CustomRadioTile(
                                    value: 2,
                                    groupValue: controller.schEmployment.value,
                                    onChanged: (val) {
                                      controller.schEmployment.value =
                                          val as int;
                                    },
                                    title: 'No'),
                              ]),
                          // Marital Status
                          RadioSelectableInput(
                              title: 'Marital Status',
                              options: [
                                CustomRadioTile(
                                    value: 1,
                                    groupValue: controller.schEmployment.value,
                                    onChanged: (val) {
                                      controller.schEmployment.value =
                                          val as int;
                                    },
                                    title: 'Single'),
                                CustomRadioTile(
                                    value: 2,
                                    groupValue: controller.schEmployment.value,
                                    onChanged: (val) {
                                      controller.schEmployment.value =
                                          val as int;
                                    },
                                    title: 'Married'),
                                CustomRadioTile(
                                    value: 3,
                                    groupValue: controller.schEmployment.value,
                                    onChanged: (val) {
                                      controller.schEmployment.value =
                                          val as int;
                                    },
                                    title: 'Divorced'),
                                CustomRadioTile(
                                    value: 4,
                                    groupValue: controller.schEmployment.value,
                                    onChanged: (val) {
                                      controller.schEmployment.value =
                                          val as int;
                                    },
                                    title: 'Widowed'),
                                CustomRadioTile(
                                    value: 5,
                                    groupValue: controller.schEmployment.value,
                                    onChanged: (val) {
                                      controller.schEmployment.value =
                                          val as int;
                                    },
                                    title: 'Separated'),
                              ]),
                          //Appointment centre
                          RadioSelectableInput(
                              title: 'Appointment centre',
                              options: [
                                CustomRadioTile(
                                    value: 1,
                                    groupValue: controller.schEmployment.value,
                                    onChanged: (val) {
                                      controller.schEmployment.value =
                                          val as int;
                                    },
                                    title: 'London'),
                                CustomRadioTile(
                                    value: 2,
                                    groupValue: controller.schEmployment.value,
                                    onChanged: (val) {
                                      controller.schEmployment.value =
                                          val as int;
                                    },
                                    title: 'Manchester'),
                                CustomRadioTile(
                                    value: 3,
                                    groupValue: controller.schEmployment.value,
                                    onChanged: (val) {
                                      controller.schEmployment.value =
                                          val as int;
                                    },
                                    title: 'Edinburgh'),
                              ]),

                          Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                GestureDetector(
                                    onTap: () {},
                                    child: Text('Clear form',
                                        style: bodyEleven.copyWith(
                                            fontFamily: '',
                                            decoration:
                                                TextDecoration.underline,
                                            decorationColor:
                                                AppColors.primaryColor,
                                            color: AppColors.primaryColor))),
                                SizedBox(width: 3.0.w)
                              ]),
                          SizedBox(height: 46.0.h),
                          Center(
                              child: Column(children: [
                            AppButton(
                                onTap: () {
                                  // Get.toNamed(AppRoutes.ngVisaUkInfo);
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
          ])
          // const DrawerOpener(),
        ]),
        bottomNavigationBar: Padding(
            padding: EdgeInsets.fromLTRB(21.0.w, 0, 21.0.w, 0),
            child: navbarHomeState));
  }
}
