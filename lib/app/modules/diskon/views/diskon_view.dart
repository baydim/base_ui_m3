import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/diskon_controller.dart';

class DiskonView extends GetView<DiskonController> {
  const DiskonView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DiskonView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'DiskonView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
