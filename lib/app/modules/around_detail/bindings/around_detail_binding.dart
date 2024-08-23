import 'package:get/get.dart';

import '../controllers/around_detail_controller.dart';

class AroundDetailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AroundDetailController>(
      () => AroundDetailController(),
    );
  }
}
