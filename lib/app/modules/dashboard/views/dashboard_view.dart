import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_multi_lang/app/modules/chat/views/chat_view.dart';
import 'package:getx_multi_lang/app/modules/dashboard/controllers/dashboard_controller.dart';
import 'package:getx_multi_lang/app/modules/home/views/home_view.dart';
import 'package:getx_multi_lang/app/modules/profile/views/profile_view.dart';

class DashboardView extends GetView<DashboardController> {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => IndexedStack(
            index: controller.currentIndex.value,
            children: const [
              HomeView(),
              ChatView(),
              ProfileView(),
            ],
          )),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
            currentIndex: controller.currentIndex.value,
            onTap: controller.changeTabIndex,
            items: [
              BottomNavigationBarItem(
                icon: const Icon(Icons.home),
                label: 'home'.tr,
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.chat),
                label: 'chat'.tr,
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.person),
                label: 'profile'.tr,
              ),
            ],
          )),
    );
  }
}