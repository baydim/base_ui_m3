import 'package:get/get.dart';

import '../controllers/diskon_controller.dart';

class DiskonBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DiskonController>(
      () => DiskonController(),
    );
  }
}
