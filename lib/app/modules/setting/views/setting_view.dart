import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../data/const/colors.dart';
import '../../../data/const/fonts.dart';
import '../controllers/setting_controller.dart';

class SettingView extends GetView<SettingController> {
  const SettingView({super.key});
  @override
  Widget build(BuildContext context) {
    final height =
        MediaQuery.of(Get.context!).size.height - AppBar().preferredSize.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: blueElement,
              height: height * 0.27,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 const Padding(
                    padding:  EdgeInsets.only(
                        top: 30, left: 15, right: 15, bottom: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                         Padding(
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
                    padding: const EdgeInsets.only(left: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Pengaturanmu",
                          style: largeText.copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        Text("Di Sini",
                            style: smallText.copyWith(
                                color: Colors.white, fontSize: 14)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(top: height * 0.04, left: width * 0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: height * 0.06,
                    width: width * 0.9,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.grey
                      ),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 1,
                          offset: Offset(0, 1),
                          spreadRadius: 0.5,
                        )
                      ]
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding:  EdgeInsets.only(left: width * 0.03),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text("Ubah Profil"),
                              ],
                            ),
                          ),
                          Padding(
                            padding:  EdgeInsets.only(left: width * 0.03),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                         
                                Icon(Icons.person)
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    
                  ),
                  Padding(
                    padding:  EdgeInsets.only(top: height * 0.02),
                    child: Container(
                      height: height * 0.06,
                      width: width * 0.9,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.grey
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 1,
                            offset: Offset(0, 1),
                            spreadRadius: 0.5,
                          )
                        ]
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(left: width * 0.03),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text("Cek Kendaraan"),
                                ],
                              ),
                            ),
                            Padding(
                              padding:  EdgeInsets.only(left: width * 0.03),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                           
                                  Icon(Icons.car_rental)
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(top: height * 0.02),
                    child: Container(
                      height: height * 0.06,
                      width: width * 0.9,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.grey
                        ),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 1,
                            offset: Offset(0, 1),
                            spreadRadius: 0.5,
                          )
                        ]
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(left: width * 0.03),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Text("Ubah Bahasa"),
                                ],
                              ),
                            ),
                            Padding(
                              padding:  EdgeInsets.only(left: width * 0.03),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                           
                                  Icon(Icons.language)
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      
                    ),
                  ),
                ],
              )
            ),
          ],
        ),
      ),
    );
  }
}
