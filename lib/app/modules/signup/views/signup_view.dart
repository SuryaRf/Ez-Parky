import 'package:ez_parky/app/modules/login/views/login_view.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../data/const/colors.dart';
import '../../../data/const/fonts.dart';
import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  const SignupView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
   final controllerText = Get.put(SignupController());
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
                            "Sign Up",
                            style: largeText.copyWith(
                                fontSize: 35,
                                color: blueText,
                                fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Gabung untuk menikmati kemudahan parkir",
                            style: smallText.copyWith(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          SizedBox(
                            width: width * 0.8,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 30, bottom: 10),
                              child: TextField(
                                controller: controllerText
                                    .emailController, // Controller from GetX
                                decoration: InputDecoration(
                                    labelText: 'Nama',
                                    labelStyle: smallText.copyWith(
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: width * 0.8,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 30, bottom: 10),
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
                          
                          // Password TextField
                          SizedBox(
                            width: width * 0.8,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 30, bottom: 10),
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
                          SizedBox(
                            width: width * 0.8,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 30, bottom: 10),
                              child: TextField(
                                controller: controllerText
                                    .passwordController, // Password Controller from GetX
                                obscureText: true, // Hide the password text
                                decoration: InputDecoration(
                                    labelText: 'Nomor Kendaraan',
                                    labelStyle: smallText.copyWith(
                                        fontWeight: FontWeight.bold)),
                              ),
                            ),
                          ),
        
                          Padding(
                            padding: const EdgeInsets.only(top: 40, left: 85),
                            child: Image.asset("assets/icon/signup.png",
                                width: width * 0.3),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 90, left: 70),
                            child: RichText(
                              text: TextSpan(
                                text: "Sudah punya akun? ",
                                style: smallText.copyWith(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.black, // Normal text color
                                ),
                                children: [
                                  TextSpan(
                                    text: "Login",
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
                                        Get.to(
                                            const LoginView());
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
