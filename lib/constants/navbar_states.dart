import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:global_plug/constants/colors.dart';
import 'package:global_plug/page_routes/route_name.dart';
import 'package:global_plug/widgets/nav_bar/nav_bar.dart';

Widget navbarHomeState = NavigationBarWidget(
    iconColor0: AppColors.colorWhite,
    fontWeight0: FontWeight.bold,
    onTap1: () {
      Get.offAllNamed(AppRoutes.applicationsDashboard);
    },
    onTap2: () {
      //to support screen
      Get.offAllNamed(AppRoutes.faqScreen);
    });

Widget navbarApplicationsState = NavigationBarWidget(
    iconColor1: AppColors.colorWhite,
    fontWeight1: FontWeight.bold,
    onTap0: () {
      //to home screen
      Get.offAllNamed(AppRoutes.nigerianPersonalInfo);
    },
    onTap2: () {
      //to support screen
      Get.offAllNamed(AppRoutes.faqScreen);
    });

Widget navbarNotificationsState = NavigationBarWidget(onTap0: () {
  //to home screen
  Get.offAllNamed(AppRoutes.nigerianPersonalInfo);
}, onTap1: () {
  //to applications dashboard
  Get.offAllNamed(AppRoutes.applicationsDashboard);
}, onTap2: () {
  //to support screen
  Get.offAllNamed(AppRoutes.faqScreen);
});

Widget navbarSupportState = NavigationBarWidget(
    iconColor2: AppColors.colorWhite,
    fontWeight2: FontWeight.bold,
    onTap0: () {
      //to home screen
      Get.offAllNamed(AppRoutes.nigerianPersonalInfo);
    },
    onTap1: () {
      //to applications dashboard
      Get.offAllNamed(AppRoutes.applicationsDashboard);
    });
