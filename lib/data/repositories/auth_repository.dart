import 'package:get/get.dart';
import 'package:reputation_sensei/data/api/dio_client.dart';
import 'package:reputation_sensei/data/constants.dart';

class AuthRepository extends GetxService {
  DioClient dioClient = Get.find();

  Future<dynamic> login({required Map<String, dynamic> params}) async {
    return await dioClient.post(Constants.login, params: params);
  }

  Future<dynamic> forgotPassword({required Map<String, dynamic> params}) async {
    return await dioClient.get(Constants.forgotPassword, queryParams: params);
  }

  Future<dynamic> getProfile() async {
    return await dioClient.get(Constants.getProfile);
  }

  Future<dynamic> updateProfile({required Map<String, dynamic> params}) async {
    return await dioClient.putMultiPart(Constants.updateProfile,
        params: params);
  }

  Future<dynamic> logout() async {
    return await dioClient.post(Constants.logout);
  }

  Future<dynamic> changePassword({required Map<String, dynamic> params}) async {
    return await dioClient.post(Constants.changePassword, params: params);
  }
}
