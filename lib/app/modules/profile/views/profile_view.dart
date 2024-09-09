import 'package:ez_parky/app/data/const/fonts.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../data/const/colors.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final height =
        MediaQuery.of(Get.context!).size.height - AppBar().preferredSize.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              color: blueElement,
              height: height * 0.27,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 30, left: 15, right: 15, bottom: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 15),
                          child: Icon(
                            Icons.notifications_none_rounded,
                            color: Colors.white,
                            size: 25,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30, top: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Akun anda",
                          style: largeText.copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: height * 0.03),
                        Padding(
                          padding: const EdgeInsets.only(right: 25),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Aisha Rahmadia",
                                  style: smallText.copyWith(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold)),
                              const Icon(
                                Icons.edit,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: height * 0.03, left: width * 0.06),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: width * 0.02, bottom: height * 0.01),
                    child: Text(
                      "Ubah foto",
                      textAlign: TextAlign.center,
                      style: smallText.copyWith(
                          color: blueElement, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    height: height * 0.1,
                    width: width * 0.2,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(
                      Icons.person_outline_sharp,
                      size: width * 0.15,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: height * 0.04, left: width * 0.06), 
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start, // Aligns content to the left
                children: [
                  Text("Email*", style: poppins.copyWith(color: blueText),),
                  SizedBox(height: height * 0.01),
                  Text("asha.syrn5@gmail.com", style: poppins.copyWith(color: blueText, fontWeight: FontWeight.bold, fontSize: 14),),
                  Container(
                    margin: EdgeInsets.only(
                        top:
                            5.0), // Optional: Adds some spacing between the text and underline
                    height: 1.3, // Height of the underline
                    color: blueElement, // Underline color
                    width: width * 0.6, // Makes the underline as long as possible
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: height * 0.04, left: width * 0.06), 
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start, // Aligns content to the left
                children: [
                  Text("Nomor Polisi*", style: poppins.copyWith(color: blueText),),
                  SizedBox(height: height * 0.01),
                  Text("AD     3       L", style: poppins.copyWith(color: blueText, fontWeight: FontWeight.bold, fontSize: 14),),
                  Container(
                    margin: EdgeInsets.only(
                        top:
                            5.0), // Optional: Adds some spacing between the text and underline
                    height: 1.3, // Height of the underline
                    color: blueElement, // Underline color
                    width: width * 0.6, // Makes the underline as long as possible
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: height * 0.04, left: width * 0.06), 
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start, // Aligns content to the left
                children: [
                  Text("Nomor Telepon*", style: poppins.copyWith(color: blueText),),
                  SizedBox(height: height * 0.01),
                  Text("08123456789", style: poppins.copyWith(color: blueText, fontWeight: FontWeight.bold, fontSize: 14),),
                  Container(
                    margin: EdgeInsets.only(
                        top:
                            5.0), // Optional: Adds some spacing between the text and underline
                    height: 1.3, // Height of the underline
                    color: blueElement, // Underline color
                    width: width * 0.6, // Makes the underline as long as possible
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: height * 0.04, left: width * 0.06), 
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start, // Aligns content to the left
                children: [
                  Text("Password*", style: poppins.copyWith(color: blueText),),
                  SizedBox(height: height * 0.01),
                  Text("**************", style: poppins.copyWith(color: blueText, fontWeight: FontWeight.bold, fontSize: 14),),
                  Container(
                    margin: EdgeInsets.only(
                        top:
                            5.0), // Optional: Adds some spacing between the text and underline
                    height: 1.3, // Height of the underline
                    color: blueElement, // Underline color
                    width: width * 0.6, // Makes the underline as long as possible
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.popUntil(context, (route) => route.isFirst),
              child: Padding(
                padding: EdgeInsets.only(top: height * 0.04, left: width * 0.06), 
                child: Image.asset("assets/icon/logout.png", height: height * 0.03),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
