import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../theme/app_theme.dart';
import '../controllers/search_penginapan_controller.dart';

class SearchPenginapanView extends GetView<SearchPenginapanController> {
  const SearchPenginapanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleTextStyle: appTheme(context).appBarTheme.titleTextStyle,
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
