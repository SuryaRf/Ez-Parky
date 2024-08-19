import 'package:get/get.dart';

import '../controllers/choose_slot_controller.dart';

class ChooseSlotBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChooseSlotController>(
      () => ChooseSlotController(),
    );
  }
}
