import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  final name = 'John Doe';
  final email = 'john.doe@example.com';
  final phone = '+1 234 567 890';
  final address = '123 Main St, New York, NY 10001';
  
  final selectedLocale = Get.locale.obs;
  
  void changeLanguage(Locale locale) {
    Get.updateLocale(locale);
    selectedLocale.value = locale;
  }
}