import 'package:ez_parky/app/data/const/colors.dart';
import 'package:ez_parky/app/data/const/fonts.dart';
import 'package:ez_parky/app/modules/login/views/login_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  const SplashScreenView({super.key});
  @override
  Widget build(BuildContext context) {
    final height =
        MediaQuery.of(Get.context!).size.height - AppBar().preferredSize.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: InkWell(
          onTap: () => Get.to(const LoginView()),
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    height: height * 0.425,
                    width: width,
                    decoration: const BoxDecoration(
                      color: orange,
                    ),
                  ),
                  Container(
                    height: height * 0.075,
                    width: width,
                    decoration: const BoxDecoration(
                      color: Color(0xFFFFEAC5),
                    ),
                  ),
                  Container(
                    height: height * 0.478,
                    width: width,
                    decoration: const BoxDecoration(
                      color: blueElement,
                    ),
                  ),
                ],
              ),
              Positioned(
                top: height * 0.4 -
                    (height *
                        0.1 /
                        2), // Center the image on the orange container
                left: (width - (height * 0.2)) / 2, // Center horizontally
                child: Image.asset(
                  "assets/icon/logo.png",
                  height: height * 0.2,
                ),
              ),
              Positioned(
                top: height * 0.9 -
                    (height *
                        0.1 /
                        2), // Center the image on the orange container
                left: (width - (height * 0.32)) / 2, // Center horizontally
                child: Text(
                  "Ketuk di mana pun Anda inginkan",
                  style: poppins.copyWith(
                      color: Colors.white, fontSize: height * 0.018, fontWeight: FontWeight.w300),
                      textAlign: TextAlign.center,
                      
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
