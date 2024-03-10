import 'package:get/get.dart';
import 'package:reputation_sensei/ui/my_account/Logout_controller.dart';

class LogoutBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LogoutController>(
        () => LogoutController(authRepository: Get.find()));
  }
}
