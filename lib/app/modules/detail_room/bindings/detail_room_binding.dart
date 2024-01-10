import 'package:get/get.dart';

import '../controllers/detail_room_controller.dart';

class DetailRoomBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailRoomController>(
      () => DetailRoomController(),
    );
  }
}
