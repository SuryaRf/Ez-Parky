import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../data/const/colors.dart';
import '../../../data/const/fonts.dart';
import '../../../widgets/parkir_layouts.dart';
import '../controllers/detail_floorplan_controller.dart';

class DetailFloorplanView extends GetView<DetailFloorplanController> {
  const DetailFloorplanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final height =
        MediaQuery.of(Get.context!).size.height - AppBar().preferredSize.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding:
                    EdgeInsets.only(top: height * 0.03, bottom: height * 0.02),
                child: Container(
                  height: height * 0.07,
                  width: width * 0.9,
                  decoration: BoxDecoration(
                    color: blueElement,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: IconButton(
                          icon: const Icon(Icons.arrow_back),
                          color: Colors.white,
                          onPressed: () => Get.back(),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text(
                          "For Your Information",
                          style: mediumText.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.only(bottom: height * 0.03),
                child: Container(
                  height: height * 0.085,
                  width: width * 0.9,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 7,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        )
                      ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 15, top: 9, bottom: 3),
                        child: Text(
                          "Lantai:",
                          style: smallText.copyWith(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 25),
                              child: Text(
                                "LG",
                                style: poppins.copyWith(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 25),
                              child: Text("GF",
                                  style: poppins.copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      decoration: TextDecoration.underline)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 25),
                              child: Text("UG",
                                  style: poppins.copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 25),
                              child: Text("1",
                                  style: poppins.copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 25),
                              child: Text("2",
                                  style: poppins.copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 25),
                              child: Text("3",
                                  style: poppins.copyWith(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20)),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              height: height * 0.03,
              width: width * 0.3,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(color: Colors.black, width: 2)),
              child: Text(
                "Pintu Masuk",
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Image.asset(
                          "assets/icon/redball.png",
                          width: width * 0.035,
                        ),
                      ),
                      Text("Terisi")
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Image.asset("assets/icon/greenball.png",
                            width: width * 0.035),
                      ),
                      Text("Kosong")
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Image.asset("assets/icon/blueball.png",
                            width: width * 0.035),
                      ),
                      Text("Lokasi Anda")
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: width * 0.28,
                  right: width * 0.28,
                  top: height * 0.05,
                  bottom: height * 0.03),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "A",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "B",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            parkir_layout(width: width)
          ],
        ),
      ),
    );
  }
}

