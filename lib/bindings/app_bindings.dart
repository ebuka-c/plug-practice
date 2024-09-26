import 'package:get/get.dart';
import 'package:global_plug/controllers/application_controller.dart';
import 'package:global_plug/controllers/auth_controller.dart';

class AppBindings implements Bindings {
  @override
  void dependencies() {
    Get.put(AuthController(), permanent: true);
    Get.put(ApplicationController());
  }
}
