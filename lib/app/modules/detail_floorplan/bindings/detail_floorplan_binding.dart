import 'package:get/get.dart';

import '../controllers/detail_floorplan_controller.dart';

class DetailFloorplanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailFloorplanController>(
      () => DetailFloorplanController(),
    );
  }
}
