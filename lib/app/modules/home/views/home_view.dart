import 'package:ez_parky/app/data/colors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
        final height =
        MediaQuery.of(Get.context!).size.height - AppBar().preferredSize.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
    
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: blueElement,
              height: height * 0.3,
            )
          ],
        ),
      )
    );
  }
}
