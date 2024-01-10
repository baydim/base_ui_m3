import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/detail_room_controller.dart';

class DetailRoomView extends GetView<DetailRoomController> {
  const DetailRoomView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DetailRoomView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'DetailRoomView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
