import 'package:get/get.dart';

class NavigationController extends GetxController {
  //TODO: Implement NavigationController

   var currentIndex = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

   void changeIndex(int index) {
    currentIndex.value = index;
  }
}
