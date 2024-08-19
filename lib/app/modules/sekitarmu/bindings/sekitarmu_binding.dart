import 'package:get/get.dart';

import '../controllers/sekitarmu_controller.dart';

class SekitarmuBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SekitarmuController>(
      () => SekitarmuController(),
    );
  }
}
