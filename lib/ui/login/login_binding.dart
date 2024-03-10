import 'package:get/get.dart';
import 'package:reputation_sensei/ui/login/controller/login_controller.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(
        () => LoginController(authRepository: Get.find()));
  }
}
