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
        body: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(
                    1000,
                  ),
                  child: const CircleAvatar(
                    radius: 30,
                    child: FadeInImage(
                      image: NetworkImage(
                        "https://th.bing.com/th/id/OIG2.at5raRXxVejU33B_Amfa?w=1024&h=1024&rs=1&pid=ImgDetMain",
                      ),
                      placeholder: AssetImage(
                        "assets/images/peace.png",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      "Name profile",
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    Opacity(
                      opacity: 0.9,
                      child: Text(
                        "+62 857 3537 9740",
                        style: appFont(context).bodySmall?.copyWith(),
                      ),
                    ),
                  ],
                )
              ],
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: const Text(
                "Mode malam",
              ),
              trailing: Checkbox(
                value: wrapperMenuController.isDark.value,
                onChanged: (v) {
                  wrapperMenuController.funcToDark(useDark: v ?? false);
                },
              ),
              onTap: () {
                wrapperMenuController.funcToDark(
                  useDark: wrapperMenuController.isDark.value,
                );
              },
            ),
            // SwitchListTile(
            //   value: wrapperMenuController.isDark.value,
            //   onChanged: (v) {
            //     wrapperMenuController.funcToDark(useDark: v);
            //   },
            // ),
          ],
        ),
      );
    });
  }
}
