import 'package:get/get.dart';

import '../controllers/cariparkir_controller.dart';

class CariparkirBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CariparkirController>(
      () => CariparkirController(),
    );
  }
}
