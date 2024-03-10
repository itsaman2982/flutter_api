import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

import 'package:reputation_sensei/data/models/update_profile_entity.dart';
import 'package:reputation_sensei/data/repositories/auth_repository.dart';

import 'package:reputation_sensei/utils/app_strings.dart';
import 'package:reputation_sensei/utils/utility.dart';

class GetProfileController extends GetxController {
  final AuthRepository authRepository;

  GetProfileController({required this.authRepository});

  RxMap profileData = {}.obs;

  @override
  void onInit() {
    super.onInit();
    fetchProfile();
  }

  Future<void> fetchProfile() async {
    if (await InternetConnection().hasInternetAccess) {
      try {
        EasyLoading.show(
          status: AppStrings.loading,
          dismissOnTap: false,
          maskType: EasyLoadingMaskType.black,
        );
        dynamic response = await authRepository.getProfile();
        profileData.value = response['data'] ?? {};
        UpdateProfileEntity? responseModel =
            UpdateProfileEntity.fromJson(response);
        EasyLoading.dismiss(animation: true);
        if (responseModel.status == 200) {
          Utility.showToastMessage(responseModel.message);
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
