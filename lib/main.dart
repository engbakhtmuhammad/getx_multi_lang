import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_multi_lang/app/routes/app_pages.dart';
import 'package:getx_multi_lang/app/translations/app_translations.dart';
import 'package:getx_multi_lang/app/utils/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX Multi Language',
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: AppPages.initial,
      getPages: AppPages.routes,
      locale: Get.deviceLocale,
      fallbackLocale: const Locale('en', 'US'),
      translations: AppTranslations(),
    );
  }
}
