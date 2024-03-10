import 'package:get/get.dart';
import 'package:reputation_sensei/ui/change_password/change_password_binding.dart';

import 'package:reputation_sensei/ui/change_password/change_password_screen.dart';
import 'package:reputation_sensei/ui/forgot_password/forgot_password_binding.dart';

import 'package:reputation_sensei/ui/forgot_password/forgot_password_screen.dart';
import 'package:reputation_sensei/ui/login/login_binding.dart';
import 'package:reputation_sensei/ui/login/login_screen.dart';
import 'package:reputation_sensei/ui/my_account/edit_profile_binding.dart';
import 'package:reputation_sensei/ui/my_account/get_profile_binding.dart';
import 'package:reputation_sensei/ui/my_account/logout_binding.dart';

import 'package:reputation_sensei/ui/my_account/my_account_screen.dart';
import 'package:reputation_sensei/ui/my_account/profile_details_screen.dart';

import 'package:reputation_sensei/ui/splash/splash_screen.dart';

part 'app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: Routes.splash,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: Routes.login,
      page: () => const LoginScreen(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.forgotPassword,
      page: () => const ForgotPasswordScreen(),
      binding: ForgotBiding(),
    ),
    GetPage(
      name: Routes.myAccount,
      page: () => const MyAccountScreen(),
      bindings: [
        LogoutBinding(),
        GetprofileBinding(),
      ],
    ),
    GetPage(
      name: Routes.profileDetails,
      page: () => const ProfileDetailsScreen(),
      binding: EditProfileBinding(),
    ),
    GetPage(
      name: Routes.changePassword,
      page: () => const ChangePasswordScreen(),
      binding: ChangePassword(),
    ),
  ];
}
