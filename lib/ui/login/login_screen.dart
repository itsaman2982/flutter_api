import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:reputation_sensei/generated/assets.dart';
import 'package:reputation_sensei/routes/app_pages.dart';
import 'package:reputation_sensei/ui/login/controller/login_controller.dart';
import 'package:reputation_sensei/utils/app_colors.dart';
import 'package:reputation_sensei/utils/app_strings.dart';
import 'package:reputation_sensei/utils/extension_classes.dart';
import 'package:reputation_sensei/widgets/edittext.dart';
import 'package:reputation_sensei/widgets/edittext_password.dart';
import 'package:reputation_sensei/widgets/normal_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final LoginController loginController = Get.find();

  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var showPassword = false.obs;
  var keepSignedIn = false.obs;

  void _login() async {
    EasyLoading.show(
      status: AppStrings.loading,
      dismissOnTap: false,
      maskType: EasyLoadingMaskType.black,
    );

    try {
      await loginController.login(
        email: emailController.text,
        password: passwordController.text,
        fcmToken: '123',
      );
    } catch (e) {
      // Handle login failure
    } finally {
      EasyLoading.dismiss();
    }
  }

  void toggleShowPassword() {
    showPassword.value = !showPassword.value;
    if (kDebugMode) {
      print("Show Password: ${showPassword.value}");
    }
  }

  void toggleKeepSignedIn() {
    keepSignedIn.value = !keepSignedIn.value;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
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
                  AppStrings.login,
                  style: const TextStyle(
                    fontSize: 28,
                    color: AppColors.textColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                10.sbh,
                Text(
                  AppStrings.welcomeBack,
                  style: const TextStyle(
                    fontSize: 18,
                    color: AppColors.textGray,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                32.sbh,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppStrings.email,
                      style: const TextStyle(
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    8.sbh,
                    EditText(
                        controller: emailController, label: AppStrings.email),
                  ],
                ),
                8.sbh,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          AppStrings.password,
                          style: const TextStyle(
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Get.toNamed(Routes.forgotPassword);
                          },
                          child: Text(
                            AppStrings.forgotPassword,
                            style: const TextStyle(
                              color: AppColors.primaryColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                    EditTextPassword(
                        controller: passwordController,
                        label: AppStrings.password)
                  ],
                ),
                28.sbh,
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        toggleKeepSignedIn();
                      },
                      child: Obx(
                        () => SizedBox(
                          height: 24.0,
                          width: 24.0,
                          child: Checkbox(
                            value: keepSignedIn.value,
                            onChanged: (value) {
                              toggleKeepSignedIn();
                            },
                            checkColor: AppColors.backgroundColor,
                            activeColor: AppColors.primaryColor,
                          ),
                        ),
                      ),
                    ),
                    5.sbw,
                    GestureDetector(
                      onTap: () {
                        toggleKeepSignedIn();
                      },
                      child: Text(
                        AppStrings.rememberMe,
                        style: const TextStyle(
                          color: AppColors.primaryColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                  ],
                ),
                28.sbh,
                NormalButton(
                  onPressed: _login,
                  text: AppStrings.login,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
