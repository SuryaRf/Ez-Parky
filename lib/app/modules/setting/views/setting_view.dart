import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../data/const/colors.dart';
import '../../../data/const/fonts.dart';
import '../controllers/setting_controller.dart';

class SettingView extends GetView<SettingController> {
  const SettingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final height =
        MediaQuery.of(Get.context!).size.height - AppBar().preferredSize.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
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
              padding:  EdgeInsets.only(top: height * 0.3),
              child: Text.rich(
                textAlign: TextAlign.center,
                TextSpan(
                  children: [
                    TextSpan(
                      text: "Maaf, hidup tidak bisa di  ",
                      style: smallText.copyWith(color: blueText),
                    ),
                    TextSpan(
                      text: "Setting\n",
                      style: smallText.copyWith(
                        fontWeight: FontWeight.bold,
                        color:  blueText
                      ),
                    ),
                    TextSpan(
                      text: "langsung hubungi tuhan saja\n",
                      style: smallText.copyWith(color: blueText),
                      
                    ),
                    TextSpan(
                      text: "Terima kasih",
                      style: smallText.copyWith(color: blueText),
                      
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
