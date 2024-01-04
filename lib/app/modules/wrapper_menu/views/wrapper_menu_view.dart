import 'package:base_ui_m3/app/modules/diskon/views/diskon_view.dart';
import 'package:base_ui_m3/app/modules/home/views/home_view.dart';
import 'package:base_ui_m3/app/modules/pesanan/views/pesanan_view.dart';
import 'package:base_ui_m3/app/modules/profile/views/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/wrapper_menu_controller.dart';

class WrapperMenuView extends GetView<WrapperMenuController> {
  const WrapperMenuView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        resizeToAvoidBottomInset: false,
        body: PageView(
          controller: controller.pageController.value,
          onPageChanged: (v) {
            controller.indexPage.value = v;
          },
          physics: NeverScrollableScrollPhysics(),
          children: [
            HomeView(),
            PesananView(),
            DiskonView(),
            ProfileView(),
          ],
        ),
        bottomNavigationBar: NavigationBar(
          height: 70,
          selectedIndex: controller.indexPage.value,
          onDestinationSelected: (v) {
            controller.indexPage.value = v;
            controller.pageController.value.jumpToPage(v);
          },
          destinations: [
            NavigationDestination(
              selectedIcon: Icon(
                Icons.home_filled,
              ),
              icon: Icon(
                Icons.home_filled,
              ),
              label: 'Home',
            ),
            NavigationDestination(
              selectedIcon: Badge(
                label: Text("1"),
                child: Icon(
                  Icons.luggage_rounded,
                ),
              ),
              icon: Badge(
                label: Text("1"),
                child: Icon(
                  Icons.luggage_rounded,
                ),
              ),
              label: 'Pesanan',
            ),
            NavigationDestination(
              selectedIcon: Badge(
                label: Text("10"),
                child: Icon(
                  Icons.monetization_on_rounded,
                ),
              ),
              icon: Badge(
                label: Text("10"),
                child: Icon(
                  Icons.monetization_on_rounded,
                ),
              ),
              label: 'Diskon',
            ),
            NavigationDestination(
              selectedIcon: Icon(Icons.account_circle),
              icon: Icon(Icons.account_circle),
              label: 'Profile',
            ),
          ],
        ),
      );
    });
  }
}
