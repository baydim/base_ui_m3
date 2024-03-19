import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../theme/app_theme.dart';
import '../controllers/base_payment_controller.dart';

class BasePaymentView extends GetView<BasePaymentController> {
  const BasePaymentView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Base Payment'),
        titleTextStyle: appTheme(context).appBarTheme.titleTextStyle,
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'BasePaymentView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
