import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../theme/app_theme.dart';
import '../controllers/detail_notif_controller.dart';

class DetailNotifView extends GetView<DetailNotifController> {
  const DetailNotifView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleTextStyle: appTheme(context).appBarTheme.titleTextStyle,
        title: const Text('DetailNotifView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'DetailNotifView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
