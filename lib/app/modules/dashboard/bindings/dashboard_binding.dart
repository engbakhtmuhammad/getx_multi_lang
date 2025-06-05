import 'package:get/get.dart';
import 'package:getx_multi_lang/app/modules/dashboard/controllers/dashboard_controller.dart';
import 'package:getx_multi_lang/app/modules/chat/controllers/chat_controller.dart';
import 'package:getx_multi_lang/app/modules/home/controllers/home_controller.dart';
import 'package:getx_multi_lang/app/modules/profile/controllers/profile_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(() => DashboardController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<ChatController>(() => ChatController());
    Get.lazyPut<ProfileController>(() => ProfileController());
  }
}