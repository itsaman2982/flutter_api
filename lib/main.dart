import 'package:flutter/material.dart';

import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:reputation_sensei/app_binding.dart';
import 'package:reputation_sensei/data/constants.dart';
import 'package:reputation_sensei/routes/app_pages.dart';

import 'package:reputation_sensei/utils/utility.dart';

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    bool isLoggedIn = GetStorage().read(Constants.isLoggedIn) ?? false;
    Utility.setLightStatusBar();
    return GetMaterialApp(
      title: 'Reputation Sensei',
      theme: ThemeData(
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
          primaryColor: Colors.white,
          inputDecorationTheme: InputDecorationTheme()),
      debugShowCheckedModeBanner: false,
      builder: EasyLoading.init(),
      getPages: AppPages.routes,
      initialBinding: AppBinding(),
      initialRoute: isLoggedIn ? Routes.myAccount : Routes.login,
    );
  }
}
