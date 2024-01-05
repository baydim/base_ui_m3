import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/search_penginapan_controller.dart';

class SearchPenginapanView extends GetView<SearchPenginapanController> {
  const SearchPenginapanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SearchPenginapanView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'SearchPenginapanView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
