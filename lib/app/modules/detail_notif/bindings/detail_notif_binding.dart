import 'package:get/get.dart';

import '../controllers/detail_notif_controller.dart';

class DetailNotifBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailNotifController>(
      () => DetailNotifController(),
    );
  }
}
