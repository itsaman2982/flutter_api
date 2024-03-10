import 'package:get/get.dart';
import 'package:reputation_sensei/ui/change_password/change_password_controller.dart';

class ChangePassword implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChangePasswordController>(
        () => ChangePasswordController(authRepository: Get.find()));
  }
}
