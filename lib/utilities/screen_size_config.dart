import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenSize {
  // screen height
  static double get screenHeight => MediaQuery.of(Get.context!).size.height;

  // screen width
  static double get screenWidth => MediaQuery.of(Get.context!).size.width;

  // size
  static Size get screenSize => MediaQuery.of(Get.context!).size;

  // calculated height
  static double calcHeight({double? height}) =>
      MediaQuery.of(Get.context!).size.height * (height! / 844);
  // calculated width
  static double calcWidth({double? width}) =>
      MediaQuery.of(Get.context!).size.width * (width! / 390);
}
