import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/pesanan_controller.dart';

class PesananView extends GetView<PesananController> {
  const PesananView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PesananView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'PesananView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
