import 'package:get/get.dart';

import '../controllers/routing_maps_controller.dart';

class RoutingMapsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RoutingMapsController>(
      () => RoutingMapsController(),
    );
  }
}
