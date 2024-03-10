import 'package:get/get.dart';
import 'package:reputation_sensei/ui/my_account/get_profile_controller.dart';

class GetprofileBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<GetProfileController>(
        () => GetProfileController(authRepository: Get.find()));
  }
}
