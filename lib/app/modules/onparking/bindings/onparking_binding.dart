import 'package:get/get.dart';

import '../controllers/onparking_controller.dart';

class OnparkingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OnparkingController>(
      () => OnparkingController(),
    );
  }
}
