import 'package:get/get.dart';
import 'package:reputation_sensei/data/api/dio_client.dart';
import 'package:reputation_sensei/data/repositories/auth_repository.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() async {
    Get.put(DioClient(), permanent: true);
    Get.put(AuthRepository());
  }
}
