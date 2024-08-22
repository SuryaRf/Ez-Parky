import 'package:ez_parky/app/data/places.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../data/const/colors.dart';
import '../../../data/const/fonts.dart';
import '../controllers/sekitarmu_controller.dart';

class SekitarmuView extends GetView<SekitarmuController> {
  const SekitarmuView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height =
        MediaQuery.of(Get.context!).size.height - AppBar().preferredSize.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Column(
                    children: [
                      Container(
                        color: blueElement,
                        height: height * 0.23,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  top: height * 0.02,
                                  left: width * 0.01,
                                  bottom: height * 0.03,
                                  right: width * 0.02),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        right: width * 0.01,
                                        left: width * 0.01),
                                    child: InkWell(
                                      onTap: () => Get.back(),
                                      child: const Icon(
                                        Icons.arrow_back,
                                        color: Colors.white,
                                        size: 25,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(right: width * 0.02),
                                    child: Container(
                                      height: height * 0.03,
                                      width: width * 0.8,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(7),
                                      ),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          const Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 10),
                                            child: Icon(Icons.search, size: 20),
                                          ),
                                          SizedBox(
                                            height: height * 0.03,
                                            width: width * 0.25,
                                            child: TextField(
                                              decoration: InputDecoration(
                                                hintText: "Cari Tempat Parkir",
                                                hintStyle: smallText.copyWith(
                                                    fontWeight: FontWeight.w300,
                                                    fontSize: 10),
                                                border: InputBorder.none,
                                                contentPadding:
                                                    EdgeInsets.only(
                                                        bottom:
                                                            height * 0.017),
                                              ),
                                              style: smallText.copyWith(
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: 10),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: width * 0.25,
                                            ),
                                            child: Row(
                                              children: [
                                                Text(
                                                  "Malang",
                                                  style: smallText.copyWith(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 10,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      left: width * 0.02),
                                                  child: const Icon(
                                                    Icons.location_on,
                                                    color: orange,
                                                    size: 25,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Center(
                              child: Container(
                                height: height * 0.13,
                                width: width * 0.85,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7),
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: height * 0.03,
                    left: width * 0.06,
                    bottom: height * 0.02),
                child: Text(
                  "Rekomendasi",
                  style: poppins.copyWith(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: height * 0.6,
                child: ListView.builder(
                  itemCount: placeRecomendations.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(
                          left: width * 0.05,
                          right: width * 0.05,
                          bottom: height * 0.02),
                      child: Container(
                        height: height * 0.1,
                        width: width * 0.9,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(7),
                            color: Colors.white,
                            border: Border.all(color: Colors.grey)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: width * 0.02),
                              child: Container(
                                height: height * 0.05,
                                width: width * 0.10,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(color: Colors.grey)),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: width * 0.02),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    placeRecomendations[index].name,
                                    style: poppins.copyWith(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13,
                                        color: Colors.black),
                                  ),
                                  Text(
                                    placeRecomendations[index].type,
                                    style: poppins.copyWith(fontSize: 10),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: height * 0.01),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                            right: width * 0.02,
                                          ),
                                          child: Text(
                                              placeRecomendations[index]
                                                  .distance,
                                              style: poppins.copyWith(
                                                  fontSize: 10)),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            right: width * 0.02,
                                          ),
                                          child: Text(
                                            "|",
                                            style:
                                                poppins.copyWith(fontSize: 10),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              right: width * 0.02),
                                          child: Text(
                                              placeRecomendations[index]
                                                  .duration,
                                              style: poppins.copyWith(
                                                  fontSize: 10)),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            right: width * 0.02,
                                          ),
                                          child: Text(
                                            "|",
                                            style:
                                                poppins.copyWith(fontSize: 10),
                                          ),
                                        ),
                                        Text(
                                            placeRecomendations[index]
                                                .description,
                                            style:
                                                poppins.copyWith(fontSize: 10)),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
