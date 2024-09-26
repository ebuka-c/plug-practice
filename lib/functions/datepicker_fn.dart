import 'package:flutter/material.dart';
import 'package:global_plug/controllers/auth_controller.dart';
import 'package:global_plug/utilities/extensions.dart';
import 'package:intl/intl.dart';

final authController = AuthController();
void datePickerFn(
    BuildContext context, TextEditingController controller) async {
  DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now().subtract(const Duration(days: 40000)),
      lastDate: DateTime.now(),
      builder: (context, child) {
        return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                  height: 480.0.h,
                  width: MediaQuery.of(context).size.width * 0.87.w,
                  child: child)
            ]);
      });
  if (pickedDate != null) {
    String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
    authController.dobController.text = formattedDate;
  } else {
    debugPrint("Date is not selected");
  }
}
