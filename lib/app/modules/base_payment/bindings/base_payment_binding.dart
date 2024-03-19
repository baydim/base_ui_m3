import 'package:get/get.dart';

import '../controllers/base_payment_controller.dart';

class BasePaymentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BasePaymentController>(
      () => BasePaymentController(),
    );
  }
}
