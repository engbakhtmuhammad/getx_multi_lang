import 'package:get/get.dart';
import 'package:getx_multi_lang/app/modules/dashboard/bindings/dashboard_binding.dart';
import 'package:getx_multi_lang/app/modules/dashboard/views/dashboard_view.dart';
import 'package:getx_multi_lang/app/routes/app_routes.dart';

class AppPages {
  static const initial = Routes.dashboard;

  static final routes = [
    GetPage(
      name: Routes.dashboard,
      page: () => const DashboardView(),
      binding: DashboardBinding(),
    ),
  ];
}