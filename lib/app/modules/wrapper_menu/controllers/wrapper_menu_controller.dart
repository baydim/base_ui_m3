import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/services/service_shared.dart';

class WrapperMenuController extends GetxController {
  final indexPage = 0.obs;
  final pageController = PageController().obs;

  final isDark = false.obs;

  funcToDark({required bool useDark}) async {
    isDark.value = !isDark.value;
    await ServiceShared.setDark(isDark: isDark.value);
    funcInitial();
  }

  funcInitial() async {
    isDark.value = await ServiceShared.getDark();
  }

  @override
  void onInit() {
    funcInitial();
    super.onInit();
  }
}
