import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:reputation_sensei/utils/app_colors.dart';

class CustomBackIcon extends StatelessWidget {
  const CustomBackIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.back();
      },
      child: Container(
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          color: AppColors.gray,
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Icon(
          Icons.arrow_back_ios_new_outlined,
          color: AppColors.primaryColor,
          size: 18,
        ),
      ),
    );
  }
}
