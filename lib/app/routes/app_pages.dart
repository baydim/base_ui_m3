import 'package:get/get.dart';

import '../modules/diskon/bindings/diskon_binding.dart';
import '../modules/diskon/views/diskon_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/pesanan/bindings/pesanan_binding.dart';
import '../modules/pesanan/views/pesanan_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/wrapper_menu/bindings/wrapper_menu_binding.dart';
import '../modules/wrapper_menu/views/wrapper_menu_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.WRAPPER_MENU;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.WRAPPER_MENU,
      page: () => const WrapperMenuView(),
      binding: WrapperMenuBinding(),
    ),
    GetPage(
      name: _Paths.PESANAN,
      page: () => const PesananView(),
      binding: PesananBinding(),
    ),
    GetPage(
      name: _Paths.DISKON,
      page: () => const DiskonView(),
      binding: DiskonBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
  ];
}
