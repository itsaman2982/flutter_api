import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

import 'package:reputation_sensei/data/models/logout_entity.dart';
import 'package:reputation_sensei/data/repositories/auth_repository.dart';
import 'package:reputation_sensei/routes/app_pages.dart';

import 'package:reputation_sensei/utils/app_strings.dart';
import 'package:reputation_sensei/utils/utility.dart';

class LogoutController extends GetxController {
  final AuthRepository authRepository;

  LogoutController({required this.authRepository});

  Future<void> logout() async {
    if (await InternetConnection().hasInternetAccess) {
      try {
        EasyLoading.show(
            status: AppStrings.loading,
            dismissOnTap: false,
            maskType: EasyLoadingMaskType.black);
        dynamic response = await authRepository.logout();
        LogoutEntity? responseModel = LogoutEntity.fromJson(response);
        EasyLoading.dismiss(animation: true);
        if (responseModel.status == 200) {
          Utility.showToastMessage(responseModel.message);
          Get.offAllNamed(Routes.login);
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
