import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

import 'package:reputation_sensei/generated/assets.dart';

import 'package:reputation_sensei/ui/forgot_password/forgot_password_controller.dart';

import 'package:reputation_sensei/utils/app_colors.dart';
import 'package:reputation_sensei/utils/app_strings.dart';
import 'package:reputation_sensei/utils/back_icon.dart';
import 'package:reputation_sensei/utils/extension_classes.dart';
import 'package:reputation_sensei/widgets/edittext.dart';
import 'package:reputation_sensei/widgets/normal_button.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  var usernameController = TextEditingController();

  final ForgotpasswordController forgotpasswordController = Get.find();

  Future<void> _forgotPassword() async {
    EasyLoading.show(
      status: AppStrings.loading,
      dismissOnTap: false,
      maskType: EasyLoadingMaskType.black,
    );
    try {
      await forgotpasswordController.forgotPassword(
          username: usernameController.text);
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
                      AppStrings.forgotPassword,
                      style: const TextStyle(
                        fontSize: 28,
                        color: AppColors.textColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    10.sbh,
                    Text(
                      AppStrings.passwordresetlink,
                      style: const TextStyle(
                        fontSize: 18,
                        color: AppColors.gray1,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    25.sbh,
                    Text(
                      AppStrings.email,
                      style: const TextStyle(
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    8.sbh,
                    SizedBox(
                      height: 48,
                      child: EditText(
                          controller: usernameController,
                          label: AppStrings.email),
                    ),
                    32.sbh,
                    NormalButton(
                      onPressed: _forgotPassword,
                      text: AppStrings.forgotPassword,
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
