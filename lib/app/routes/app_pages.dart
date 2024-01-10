import 'package:get/get.dart';

import '../modules/bookmark/bindings/bookmark_binding.dart';
import '../modules/bookmark/views/bookmark_view.dart';
import '../modules/detail_hotel/bindings/detail_hotel_binding.dart';
import '../modules/detail_hotel/views/detail_hotel_view.dart';
import '../modules/detail_notif/bindings/detail_notif_binding.dart';
import '../modules/detail_notif/views/detail_notif_view.dart';
import '../modules/detail_room/bindings/detail_room_binding.dart';
import '../modules/detail_room/views/detail_room_view.dart';
import '../modules/diskon/bindings/diskon_binding.dart';
import '../modules/diskon/views/diskon_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/notification/bindings/notification_binding.dart';
import '../modules/notification/views/notification_view.dart';
import '../modules/pesanan/bindings/pesanan_binding.dart';
import '../modules/pesanan/views/pesanan_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/search_penginapan/bindings/search_penginapan_binding.dart';
import '../modules/search_penginapan/views/search_penginapan_view.dart';
import '../modules/wrapper_menu/bindings/wrapper_menu_binding.dart';
import '../modules/wrapper_menu/views/wrapper_menu_view.dart';

// ignore_for_file: constant_identifier_names

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
    GetPage(
      name: _Paths.SEARCH_PENGINAPAN,
      page: () => const SearchPenginapanView(),
      binding: SearchPenginapanBinding(),
    ),
    GetPage(
      name: _Paths.BOOKMARK,
      page: () => const BookmarkView(),
      binding: BookmarkBinding(),
    ),
    GetPage(
      name: _Paths.NOTIFICATION,
      page: () => const NotificationView(),
      binding: NotificationBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_NOTIF,
      page: () => const DetailNotifView(),
      binding: DetailNotifBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_HOTEL,
      page: () => const DetailHotelView(),
      binding: DetailHotelBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_ROOM,
      page: () => const DetailRoomView(),
      binding: DetailRoomBinding(),
    ),
  ];
}
