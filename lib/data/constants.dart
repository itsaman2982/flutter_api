class Constants {
  ///Local storage constants
  static String accessToken = 'access_token';
  static String isLoggedIn = 'is_logged_in';

  ///API Constants
  ///Base URLs
  static const String baseUrl = "https://anew.sigmasolve.com/api";

  ///End Points
  static const String login = "/Login";
  static const String logout = "/Login/logout";
  static const String updateProfile = '/Profile';
  static const String changePassword = '/Profile/ChangePassword';
  static const String getProfile = '/Profile';
  static const String forgotPassword = '/Login/ForgotPassword';
}
