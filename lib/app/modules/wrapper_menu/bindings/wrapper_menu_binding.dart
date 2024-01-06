import 'package:get/get.dart';

import '../controllers/wrapper_menu_controller.dart';

class WrapperMenuBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<WrapperMenuController>(
      WrapperMenuController(),
    );
  }
}
