import 'package:ez_parky/app/data/const/colors.dart';
import 'package:ez_parky/app/data/const/fonts.dart';
import 'package:ez_parky/app/modules/login/views/login_view.dart';
import 'package:ez_parky/app/modules/signup/views/signup_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/onboarding_controller.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final height =
        MediaQuery.of(Get.context!).size.height - AppBar().preferredSize.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 40, left: 15, top: 270),
              child: Image.asset(
                'assets/img/onboarding.png',
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  bottom: 60, left: 15, right: 15, top: 20),
              child: Text(
                "Welcome to\nEz-Parky",
                textAlign: TextAlign.center,
                style: mediumText.copyWith(fontSize: 24),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child:
                          InkWell(
                            onTap: () => Get.to(const LoginView()),

                            child: Image.asset("assets/icon/login2.png")),
                    ),
                  ),
                  // const SizedBox(width: 20,),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child:
                          InkWell(
                            onTap: () => Get.to(const SignupView()),
                            child: Image.asset("assets/icon/signup.png")),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
