import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:reputation_sensei/generated/assets.dart';
import 'package:reputation_sensei/routes/app_pages.dart';
import 'package:reputation_sensei/ui/my_account/Logout_controller.dart';
import 'package:reputation_sensei/ui/my_account/get_profile_controller.dart';

import 'package:reputation_sensei/utils/app_colors.dart';
import 'package:reputation_sensei/utils/app_strings.dart';
import 'package:reputation_sensei/utils/extension_classes.dart';

class MyAccountScreen extends StatefulWidget {
  const MyAccountScreen({super.key});

  @override
  State<MyAccountScreen> createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccountScreen> {
  final GetProfileController getProfileController = Get.find();

  @override
  void initState() {
    super.initState();
    getProfileController.fetchProfile();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Obx(
            () => Container(
              color: AppColors.primaryColor,
              child: SafeArea(
                bottom: false,
                child: Column(
                  children: [
                    const Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.all(16.0),
                        )),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ClipOval(
                            child: Image.asset(
                              Assets.imagesProfileImage,
                              width: 70,
                              height: 70,
                            ),
                          ),
                          20.sbw,
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    '${getProfileController.profileData['FirstName']} ${getProfileController.profileData['LastName']}',
                                    style: const TextStyle(
                                      fontSize: 20,
                                      color: AppColors.backgroundColor,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                '${getProfileController.profileData['Email']} ',
                                style: const TextStyle(
                                    fontSize: 16, color: Colors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
              child: SafeArea(
                  top: false,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {
                            Get.toNamed(Routes.profileDetails);
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SvgPicture.asset(
                                  Assets.imagesIcUser,
                                  height: 24,
                                  width: 24,
                                ),
                                20.sbw,
                                Expanded(
                                  child: Text(
                                    AppStrings.editprofile,
                                    style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.primaryColor),
                                  ),
                                ),
                                SvgPicture.asset(
                                  Assets.imagesIcNext,
                                  height: 24,
                                  width: 24,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Divider(
                            color: Colors.black.withOpacity(0.10), height: 1),
                        InkWell(
                          onTap: () {
                            Get.toNamed(Routes.changePassword);
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Icon(
                                  Icons.lock_outline,
                                  size: 24,
                                  color: AppColors.primaryColor,
                                ),
                                20.sbw,
                                Expanded(
                                  child: Text(
                                    AppStrings.changePassword,
                                    style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                        color: AppColors.primaryColor),
                                  ),
                                ),
                                SvgPicture.asset(
                                  Assets.imagesIcNext,
                                  height: 24,
                                  width: 24,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Divider(
                            color: Colors.black.withOpacity(0.10), height: 1),
                        InkWell(
                          onTap: () {
                            _showLogoutConfirmationDialog(context);
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SvgPicture.asset(
                                  Assets.imagesIcLogout,
                                  height: 24,
                                  width: 24,
                                ),
                                20.sbw,
                                Text(
                                  AppStrings.logout,
                                  style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                      color: AppColors.primaryColor),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )))
        ],
      ),
    );
  }
}

_showLogoutConfirmationDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Dialog(
        backgroundColor: Colors.transparent,
        elevation: 0,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SvgPicture.asset(
                Assets.imagesLogoutImage,
              ),
              20.sbh,
              Text(
                AppStrings.surelogout,
                style: const TextStyle(
                  fontSize: 18,
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              25.sbh,
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.red,
                    ),
                    onPressed: _logout,
                    child: Text(
                      AppStrings.logouttxt,
                      style: const TextStyle(
                        color: AppColors.backgroundColor,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  10.sbh,
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: AppColors.gray1),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      AppStrings.canceltextbtn,
                      style: const TextStyle(
                        color: AppColors.gray1,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    },
  );
}

void _logout() async {
  final LogoutController logoutController = Get.find();
  // Get.put(LogoutBinding());
  EasyLoading.show(
    status: AppStrings.loading,
    dismissOnTap: false,
    maskType: EasyLoadingMaskType.black,
  );
  try {
    await logoutController.logout();
  } catch (e) {
    if (kDebugMode) {
      print('logout failed: $e');
    }
  } finally {
    EasyLoading.dismiss();
  }
}
