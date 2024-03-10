import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:reputation_sensei/generated/assets.dart';
import 'package:reputation_sensei/ui/change_password/change_password_controller.dart';

import 'package:reputation_sensei/utils/app_colors.dart';
import 'package:reputation_sensei/utils/app_strings.dart';
import 'package:reputation_sensei/utils/back_icon.dart';
import 'package:reputation_sensei/utils/extension_classes.dart';
import 'package:reputation_sensei/widgets/edittext_password.dart';
import 'package:reputation_sensei/widgets/normal_button.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _PasswordChangeState();
}

class _PasswordChangeState extends State<ChangePasswordScreen> {
  final ChangePasswordController changePasswordController = Get.find();

  var currentPasswordController = TextEditingController();
  var newPasswordController = TextEditingController();
  var confirmNewPasswordController = TextEditingController();

  void _changepassword() async {
    EasyLoading.show(
      status: AppStrings.loading,
      dismissOnTap: false,
      maskType: EasyLoadingMaskType.black,
    );

    try {
      await changePasswordController.changePassword(
        currentPassword: currentPasswordController.text,
        newPassword: newPasswordController.text,
        confirmNewPassword: confirmNewPasswordController.text,
      );
    } catch (e) {
      //
    } finally {
      EasyLoading.dismiss();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Image.asset(
                        Assets.imagesSplashLogo,
                        width: 180,
                        height: 180,
                      ),
                    ),
                    30.sbh,
                    Text(
                      AppStrings.changePassword,
                      style: const TextStyle(
                        fontSize: 28,
                        color: AppColors.textColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    10.sbh,
                    Text(
                      AppStrings.changePasswordLabel,
                      style: const TextStyle(
                        fontSize: 18,
                        color: AppColors.gray1,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    25.sbh,
                    Text(
                      AppStrings.currentPassword,
                      style: const TextStyle(
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    10.sbh,
                    EditTextPassword(
                        controller: currentPasswordController,
                        label: AppStrings.currentPassword),
                    20.sbh,
                    Text(
                      AppStrings.newPassword,
                      style: const TextStyle(
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    10.sbh,
                    EditTextPassword(
                        controller: newPasswordController,
                        label: AppStrings.newPassword),
                    20.sbh,
                    Text(
                      AppStrings.reenternewpassword,
                      style: const TextStyle(
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    10.sbh,
                    EditTextPassword(
                        controller: confirmNewPasswordController,
                        label: AppStrings.reenternewpassword),
                    32.sbh,
                    NormalButton(
                      onPressed: _changepassword,
                      text: AppStrings.changePassword,
                    ),
                  ],
                ),
              ),
              const Positioned(top: 16, left: 16, child: CustomBackIcon()),
            ],
          ),
        ),
      ),
    );
  }
}
