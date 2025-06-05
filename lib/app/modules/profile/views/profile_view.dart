import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_multi_lang/app/modules/profile/controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('profile'.tr),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                      'https://randomuser.me/api/portraits/men/1.jpg',
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    controller.name,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    controller.email,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            Text(
              'profile_info'.tr,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            _buildInfoItem(Icons.phone, 'phone'.tr, controller.phone),
            _buildInfoItem(Icons.location_on, 'address'.tr, controller.address),
            const SizedBox(height: 32),
            Text(
              'settings'.tr,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            _buildLanguageSelector(),
            const SizedBox(height: 16),
            _buildSettingsItem(Icons.logout, 'logout'.tr, () {}),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoItem(IconData icon, String title, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          Icon(icon, color: Get.theme.primaryColor),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
              Text(
                value,
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildLanguageSelector() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          children: [
            Icon(Icons.language, color: Get.theme.primaryColor),
            const SizedBox(width: 16),
            Text(
              'language'.tr,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
            const Spacer(),
            Obx(() => DropdownButton<Locale>(
                  value: controller.selectedLocale.value,
                  underline: const SizedBox(),
                  icon: const Icon(Icons.arrow_drop_down),
                  items: [
                    DropdownMenuItem(
                      value: const Locale('en', 'US'),
                      child: Text('english'.tr),
                    ),
                    DropdownMenuItem(
                      value: const Locale('es', 'ES'),
                      child: Text('spanish'.tr),
                    ),
                    DropdownMenuItem(
                      value: const Locale('fr', 'FR'),
                      child: Text('french'.tr),
                    ),
                  ],
                  onChanged: (locale) {
                    if (locale != null) {
                      controller.changeLanguage(locale);
                    }
                  },
                )),
          ],
        ),
      ),
    );
  }

  Widget _buildSettingsItem(IconData icon, String title, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(12),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Row(
          children: [
            Icon(icon, color: Get.theme.primaryColor),
            const SizedBox(width: 16),
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
            const Spacer(),
            const Icon(Icons.arrow_forward_ios, size: 16),
          ],
        ),
      ),
    );
  }
}