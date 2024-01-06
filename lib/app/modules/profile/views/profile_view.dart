import 'package:base_ui_m3/app/modules/wrapper_menu/controllers/wrapper_menu_controller.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../../theme/app_theme.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    WrapperMenuController wrapperMenuController =
        Get.find<WrapperMenuController>();

    return Obx(() {
      return Scaffold(
        appBar: AppBar(
          titleTextStyle: appTheme(context).appBarTheme.titleTextStyle,
          title: const Text('Profile'),
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {
                  Get.toNamed(Routes.NOTIFICATION);
                },
                icon: const Badge(
                  label: Text("2"),
                  child: Icon(
                    Icons.notifications_rounded,
                  ),
                ))
          ],
        ),
        body: Center(
          child: SwitchListTile(
            value: wrapperMenuController.isDark.value,
            onChanged: (v) {
              wrapperMenuController.funcToDark(useDark: v);
            },
          ),
        ),
      );
    });
  }
}
