import 'package:demo/controllers/theme_controller.dart';
import 'package:demo/routes/app_routes.dart';
import 'package:demo/utils/app_localization.dart';
import 'package:demo/utils/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  runApp(GetxDemoApp());
}

class GetxDemoApp extends StatelessWidget {
  final themeController = Get.put(ThemeController());

  @override
  Widget build(BuildContext context) {
    return Obx(() => GetMaterialApp(
          title: 'Demo App',
          theme: ThemeData.light(),
          darkTheme: ThemeData.dark(),
          themeMode: themeController.themeMode.value,
          translations: AppLocalization(),
          locale: const Locale('en', 'US'),
          fallbackLocale: const Locale('en', 'US'),
          getPages: AppRoutes.getPages(),
          initialRoute: AppRoutes.home,
        ));
  }
}

@override
Widget build(BuildContext context) {
  return GetMaterialApp(
    title: 'Github Demo App',
    theme: AppThemes.lightTheme(), 
    darkTheme: AppThemes.darkTheme(),
    themeMode: ThemeMode.system,
    translations: AppLocalization(),
    locale: const Locale('en', 'US'),
    fallbackLocale: const Locale('en', 'US'),
    translationsKeys: AppLocalization().keys,
    getPages: AppRoutes.getPages(),
    initialRoute: AppRoutes.home,
  );
}
