import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:reputation_sensei/data/constants.dart';
import 'package:reputation_sensei/data/models/login_entity.dart';
import 'package:reputation_sensei/data/repositories/auth_repository.dart';
import 'package:reputation_sensei/routes/app_pages.dart';
import 'package:reputation_sensei/utils/app_strings.dart';
import 'package:reputation_sensei/utils/utility.dart';

class LoginController extends GetxController {
  final AuthRepository authRepository;

  LoginController({required this.authRepository});

  Future<void> login({required String email, required password, required fcmToken}) async {
    if (await InternetConnection().hasInternetAccess) {
      try {
        EasyLoading.show(
            status: AppStrings.loading, dismissOnTap: false, maskType: EasyLoadingMaskType.black);
        Map<String, dynamic> params = {
          'username': email,
          'password': password,
          'fmcToken': fcmToken
        };
        dynamic response = await authRepository.login(params: params);
        LoginEntity? responseModel = LoginEntity.fromJson(response);
        EasyLoading.dismiss(animation: true);
        if (responseModel.status == 200) {
          Utility.showToastMessage(responseModel.message);
          GetStorage().write(Constants.accessToken, responseModel.data?.token ?? '');
          // Save login state
          GetStorage().write(Constants.isLoggedIn, true);
          // Navigate to MyAccount screen
          Get.offAllNamed(Routes.myAccount, arguments: [0]);
        } else {
          Utility.showToastMessage(responseModel.message);
        }
      } catch (e) {
        EasyLoading.dismiss(animation: true);
        Utility.showToastMessage(AppStrings.commonErrorMessage);
      }
    } else {
      Utility.showToastMessage(AppStrings.internetConnectionError);
    }
  }
}
