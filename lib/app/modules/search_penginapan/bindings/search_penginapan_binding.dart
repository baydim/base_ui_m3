import 'package:get/get.dart';

import '../controllers/search_penginapan_controller.dart';

class SearchPenginapanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SearchPenginapanController>(
      () => SearchPenginapanController(),
    );
  }
}
