import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/bookmark_controller.dart';

class BookmarkView extends GetView<BookmarkController> {
  const BookmarkView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BookmarkView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'BookmarkView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
