import 'package:fluttertoast/fluttertoast.dart';

appCloseFn(DateTime timeBackPressed) async {
  final difference = DateTime.now().difference(timeBackPressed);
  final isExitWarning = difference >= const Duration(seconds: 2);

  timeBackPressed = DateTime.now();
  if (isExitWarning) {
    const message = 'Press back again to exit';
    Fluttertoast.showToast(msg: message);

    return false;
  } else {
    Fluttertoast.cancel();
    return true;
  }
}
