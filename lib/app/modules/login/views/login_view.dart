import 'package:ez_parky/app/data/const/colors.dart';
import 'package:ez_parky/app/data/const/fonts.dart';
import 'package:ez_parky/app/modules/navigation/views/navigation_view.dart';
import 'package:ez_parky/app/modules/signup/views/signup_view.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final controllerText = Get.put(LoginController());
    final height =
        MediaQuery.of(Get.context!).size.height - AppBar().preferredSize.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Center(
                    child: Image.asset(
                  "assets/icon/logo.png",
                  height: height * 0.35,
                  width: width * 0.5,
                )),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Log In",
                            style: largeText.copyWith(
                                fontSize: 35,
                                color: blueText,
                                fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Untuk memulai parkir lebih sat-set",
                            style: smallText.copyWith(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                          SizedBox(
                            width: width * 0.8,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: TextField(
                                controller: controllerText
                                    .emailController, // Controller from GetX
                                decoration: InputDecoration(
                                    labelText: 'Email',
                                    labelStyle: smallText.copyWith(
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          // Password TextField
                          SizedBox(
                            width: width * 0.8,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: TextField(
                                controller: controllerText
                                    .passwordController, // Password Controller from GetX
                                obscureText: true, // Hide the password text
                                decoration: InputDecoration(
                                    labelText: 'Password',
                                    labelStyle: smallText.copyWith(
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(top: 70, left: 85),
                            child: InkWell(
                              onTap: () => Get.to(NavigationView()),
                              child: Image.asset("assets/icon/login.png",
                                  width: width * 0.3),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 130, left: 57),
                            child: RichText(
                              text: TextSpan(
                                text: "Belum punya akun? ",
                                style: smallText.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.black, // Normal text color
                                ),
                                children: [
                                  TextSpan(
                                    text: "Sign Up",
                                    style: smallText.copyWith(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w900,
                                      color:
                                          blueText, // Color for the clickable part
                                      decoration: TextDecoration
                                          .underline, // Optional: Underline to indicate it's clickable
                                    ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        Get.to(const SignupView());
                                      },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
