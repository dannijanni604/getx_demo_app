import 'package:demo/screens/home_screen.dart';
import 'package:demo/screens/multi_language_screen.dart';
import 'package:demo/screens/profile_screen.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String splash = '/';
  static const String home = '/home';
  static const String multiLanguage = '/multiLanguage';
  static const String profile = '/profile';

  static List<GetPage> getPages() {
    return [
      // GetPage(
      //   name: splash,
      //   page: () => const SplashView(),
      // ),
      GetPage(
        name: home,
        page: () => HomeScreen(),
      ),
      GetPage(
        name: multiLanguage,
        page: () => const MultiLanguageScreen(),
      ),
      GetPage(
        name: profile,
        page: () => SecondScreen(),
      ),
    ];
  }
}
