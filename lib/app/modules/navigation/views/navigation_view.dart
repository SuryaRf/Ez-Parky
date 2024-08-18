import 'package:ez_parky/app/data/const/colors.dart';
import 'package:ez_parky/app/modules/history/views/history_view.dart';
import 'package:ez_parky/app/modules/home/views/home_view.dart';
import 'package:ez_parky/app/modules/profile/views/profile_view.dart';
import 'package:ez_parky/app/modules/setting/views/setting_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/navigation_controller.dart';

class NavigationView extends GetView<NavigationController> {
  NavigationView({Key? key}) : super(key: key);

  final List<Widget> _children = [
    HomeView(),
    HistoryView(),
    SettingView(),
    ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Obx(() => BottomNavigationBar(
        showUnselectedLabels: false,
        onTap: (index) => controller.changeIndex(index),
        currentIndex: controller.currentIndex.value,
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.grey,
        selectedItemColor: blueElement,
        items: List.generate(4, (index) {
          final isSelected = controller.currentIndex.value == index;
          final iconList = [
            Icons.home,
            Icons.history,
            Icons.settings,
            Icons.person,
          ];
          final labelList = [
            'Home',
            'History',
            'Settings',
            'Profile',
          ];

          return BottomNavigationBarItem(
            icon: Container(
              decoration: isSelected
                  ? BoxDecoration(
                      shape: BoxShape.circle,
                      color: blueElement,
                    )
                  : null,
              padding: isSelected ? const EdgeInsets.all(8) : null,
              child: Icon(
                iconList[index],
                color: isSelected ? Colors.white : Colors.grey,
              ),
            ),
            label: labelList[index],
            tooltip: '',
          );
        }),
      )),
      body: Obx(() => _children.elementAt(controller.currentIndex.value)),
    );
  }
}





// import 'package:ez_parky/app/data/colors.dart';
// import 'package:ez_parky/app/modules/history/views/history_view.dart';
// import 'package:ez_parky/app/modules/home/views/home_view.dart';
// import 'package:ez_parky/app/modules/profile/views/profile_view.dart';
// import 'package:ez_parky/app/modules/setting/views/setting_view.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import '../controllers/navigation_controller.dart';

// class NavigationView extends GetView<NavigationController> {
//   NavigationView({Key? key}) : super(key: key);

//   final List<Widget> _children = [
//     HomeView(),
//     HistoryView(),
//     SettingView(),
//     ProfileView(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     final controller = Get.put(NavigationController());
//     return Scaffold(
//       bottomNavigationBar: Obx(() => BottomNavigationBar(
//         showUnselectedLabels: false,
//         onTap: (index) => controller.changeIndex(index),
//         currentIndex: controller.currentIndex.value,
//         backgroundColor: Colors.white,
//         unselectedItemColor: Colors.grey,
//         selectedItemColor: blueElement,
//         items: const [
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.history),
//             label: 'History',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.settings),
//             label: 'Setings',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: 'Profile',
//           ),
//         ],
//       )),
//       body: Obx(() => _children.elementAt(controller.currentIndex.value)),
//     );
//   }
// }
