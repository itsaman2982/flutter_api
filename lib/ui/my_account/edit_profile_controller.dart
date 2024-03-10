import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:reputation_sensei/data/models/edit_profile_entity.dart';
import 'package:reputation_sensei/data/repositories/auth_repository.dart';
import 'package:reputation_sensei/utils/app_strings.dart';
import 'package:reputation_sensei/utils/utility.dart';

class EditProfileController extends GetxController {
  final AuthRepository authRepository;

  EditProfileController({required this.authRepository});

  Future<void> updateProfile({
    required String firstName,
    required String lastName,
    required String email,
    required String phone,
    required String driverpictureurl,
  }) async {
    if (await InternetConnection().hasInternetAccess) {
      try {
        EasyLoading.show(
            status: AppStrings.loading,
            dismissOnTap: false,
            maskType: EasyLoadingMaskType.black);
        Map<String, dynamic> params = {
          'FirstName': firstName,
          'LastName': lastName,
          'Email': email,
          'Phone': phone,
          'DriverPictureUrl': driverpictureurl,
        };
        dynamic response = await authRepository.updateProfile(params: params);
        EditProfileEntity? responseModel = EditProfileEntity.fromJson(response);
        EasyLoading.dismiss(animation: true);
        if (responseModel.status == 200) {
          Utility.showToastMessage(responseModel.message);
          Get.back();
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
