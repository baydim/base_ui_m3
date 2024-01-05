import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../theme/app_theme.dart';
import '../controllers/notification_controller.dart';

class NotificationView extends GetView<NotificationController> {
  const NotificationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifikasi'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              height: 45,
              child: SearchBar(
                textStyle: MaterialStatePropertyAll(
                  appFont(context).bodySmall,
                ),
                padding: const MaterialStatePropertyAll(
                  EdgeInsets.symmetric(
                    vertical: 0,
                    horizontal: 20,
                  ),
                ),
                hintText: "Cari Notifikasi...",
                leading: Icon(
                  Icons.search,
                  color: appColor(context).useScheme.primary,
                  size: 20,
                ),
                elevation: const MaterialStatePropertyAll(0),
                backgroundColor: MaterialStatePropertyAll(
                  appColor(context).useScheme.inversePrimary.withOpacity(0.2),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
