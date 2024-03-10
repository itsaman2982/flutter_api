import 'package:get/get.dart';

import 'package:reputation_sensei/ui/forgot_password/forgot_password_controller.dart';

class ForgotBiding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ForgotpasswordController>(
        () => ForgotpasswordController(authRepository: Get.find()));
  }
}
