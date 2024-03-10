import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:reputation_sensei/generated/assets.dart';

import 'package:reputation_sensei/ui/my_account/edit_profile_controller.dart';
import 'package:reputation_sensei/utils/app_colors.dart';
import 'package:reputation_sensei/utils/app_strings.dart';
import 'package:reputation_sensei/utils/back_icon.dart';
import 'package:reputation_sensei/utils/extension_classes.dart';
import 'package:reputation_sensei/utils/photo_option_dialog.dart';
import 'package:reputation_sensei/widgets/edittext.dart';
import 'package:reputation_sensei/widgets/normal_button.dart';

class ProfileDetailsScreen extends StatefulWidget {
  const ProfileDetailsScreen({super.key});

  @override
  State<ProfileDetailsScreen> createState() => _ProfileState();
}

class _ProfileState extends State<ProfileDetailsScreen> {
  final EditProfileController editProfileController = Get.find();

  var firstNameController = TextEditingController();
  var lastNameController = TextEditingController();
  var emailController = TextEditingController();
  var phonecontroller = TextEditingController();

  final RxString _pickedImagePath = ''.obs;
  final RxString _pickedImageName = ''.obs;

  void _updateProfile() async {
    EasyLoading.show(
      status: AppStrings.loading,
      dismissOnTap: false,
      maskType: EasyLoadingMaskType.black,
    );
    try {
      await editProfileController.updateProfile(
        firstName: firstNameController.text,
        lastName: lastNameController.text,
        email: emailController.text,
        phone: phonecontroller.text,
        driverpictureurl: _pickedImagePath.value,
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
        child: Obx(
          () => Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CustomBackIcon(),
                    Text(
                      AppStrings.editprofiledetails,
                      style: const TextStyle(
                        fontSize: 22,
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Visibility(
                      visible: false,
                      maintainAnimation: true,
                      maintainState: true,
                      maintainSize: true,
                      child: CustomBackIcon(),
                    )
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  padding:
                      const EdgeInsets.only(left: 16, right: 16, bottom: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Stack(
                          children: [
                            SvgPicture.asset(
                              Assets.imagesProfilePhotoFrame,
                              height: 130,
                              width: 130,
                            ),
                            Positioned.fill(
                              child: Center(
                                child: ClipOval(
                                  child: _pickedImagePath.value.isNotEmpty
                                      ? Image.file(
                                          File(_pickedImagePath.value),
                                          height: 90,
                                          width: 90,
                                          fit: BoxFit.cover,
                                        )
                                      : Image.asset(
                                          Assets.imagesProfileImage,
                                          width: 90,
                                          height: 90,
                                          fit: BoxFit.fill,
                                        ),
                                ),
                              ),
                            ),
                            Positioned.fill(
                              child: Align(
                                alignment: Alignment.bottomRight,
                                child: Container(
                                  margin: const EdgeInsets.all(10),
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: GestureDetector(
                                    onTap: () {
                                      Get.dialog(
                                          PhotoOptionDialog(
                                            onCameraPressed: () async {
                                              Get.back();
                                              final XFile? image =
                                                  await ImagePicker().pickImage(
                                                      source:
                                                          ImageSource.camera);
                                              if (image != null) {
                                                _pickedImagePath.value =
                                                    image.path;
                                                _pickedImageName.value =
                                                    image.name;
                                              }
                                            },
                                            onGalleryPressed: () async {
                                              Get.back();
                                              final XFile? image =
                                                  await ImagePicker().pickImage(
                                                      source:
                                                          ImageSource.gallery);
                                              if (image != null) {
                                                _pickedImagePath.value =
                                                    image.path;
                                              }
                                            },
                                          ),
                                          useSafeArea: true);
                                    },
                                    child: SvgPicture.asset(
                                      Assets.imagesIcPenCircle,
                                      height: 30,
                                      width: 30,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      16.sbh,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            AppStrings.firstname,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: AppColors.primaryColor,
                            ),
                          ),
                          8.sbh,
                          EditText(
                            controller: firstNameController,
                            label: AppStrings.firstname,
                          ),
                        ],
                      ),
                      10.sbh,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            AppStrings.lastname,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: AppColors.primaryColor,
                            ),
                          ),
                          8.sbh,
                          EditText(
                            controller: lastNameController,
                            label: AppStrings.lastname,
                          ),
                        ],
                      ),
                      10.sbh,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            AppStrings.emailid,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: AppColors.primaryColor,
                            ),
                          ),
                          8.sbh,
                          EditText(
                            controller: emailController,
                            label: AppStrings.emailid,
                          ),
                        ],
                      ),
                      10.sbh,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            AppStrings.mobileno,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: AppColors.primaryColor,
                            ),
                          ),
                          8.sbh,
                          EditText(
                            controller: phonecontroller,
                            label: AppStrings.mobileno,
                          ),
                        ],
                      ),
                      50.sbh,
                      NormalButton(
                          onPressed: _updateProfile, text: AppStrings.savebtn),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
