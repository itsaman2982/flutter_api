import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:reputation_sensei/data/constants.dart';
import 'package:reputation_sensei/generated/assets.dart';
import 'package:reputation_sensei/routes/app_pages.dart';
import 'package:reputation_sensei/utils/app_colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () => redirect());
  }

  void redirect() {
    Get.offAndToNamed((GetStorage().read(Constants.isLoggedIn) != null &&
            GetStorage().read(Constants.isLoggedIn) == true)
        ? Routes.login
        : Routes.login);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
          child: Center(
              child: Image.asset(
        Assets.imagesSplashLogo,
        height: 250,
        width: 300,
      ))),
    );
  }
}
