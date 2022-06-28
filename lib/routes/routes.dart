import 'package:get/get.dart';
import 'package:task1/binding/binding.dart';

import '../screens/Register.dart';
import '../screens/main_screen.dart';
import '../screens/signin_screen.dart';

class AppRoutes {
  //inital route
  static const welcome = Routes.MainScreen;
  //getpage
  static final routes = [
    GetPage(
      name: Routes.MainScreen,
      page: () => const MainScreen(),
    ),
    GetPage(
      name: Routes.SignInScreen,
      page: () => SignInScreen(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: Routes.RegisterScreen,
      page: () => RegisterScreen(),
      binding: AuthBinding(),
    ),
  ];
}

class Routes {
  static const MainScreen = '/welcomeScreen';
  static const SignInScreen = '/SignInScreen';
  static const RegisterScreen = '/RegisterScreen';
}
