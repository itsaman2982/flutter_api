import 'package:get/get.dart';
import 'package:reputation_sensei/ui/my_account/edit_profile_controller.dart';

class EditProfileBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<EditProfileController>(
        () => EditProfileController(authRepository: Get.find()));
  }
}
