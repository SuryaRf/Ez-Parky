import 'package:ez_parky/app/data/const/fonts.dart';
import 'package:ez_parky/app/modules/scan_qr/scan_qr.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../data/const/colors.dart';
import '../../detail_floorplan/views/detail_floorplan_view.dart';
import '../controllers/onparking_controller.dart';

class OnparkingView extends GetView<OnparkingController> {
  const OnparkingView({Key? key}) : super(key: key);
  @override
   Widget build(BuildContext context) {
    final height =
        MediaQuery.of(Get.context!).size.height - AppBar().preferredSize.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Padding(
                  padding:
                      EdgeInsets.only(top: height * 0.03, bottom: height * 0.03),
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(
                      "Kamu sedang berada di",
                      style: mediumText.copyWith(
                          color: orange, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Image.asset("assets/icon/car.png", width: width * 0.17),
                  Padding(
                    padding: EdgeInsets.only(top: height * 0.03),
                    child: Text(
                      "Matos pintu utara",
                      style: mediumText.copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text(
                      "Jl. Veteran No. 2 Malang, Indonesia, 6511",
                      style: smallText.copyWith(fontSize: 11),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: height * 0.03),
                    child: Column(
                      children: [
                        Text(
                          "Ground Floor",
                          style: mediumText.copyWith(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "B-14",
                          style: mediumText.copyWith(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: width * 0.04),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () =>  Get.to(const DetailFloorplanView()),
                          child: Text(
                            "Lihat denah",
                            style: smallText.copyWith(fontWeight: FontWeight.w500),
                          ),
                        ),
                        Icon(Icons.arrow_right_rounded)
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: height * 0.03),
                    child: Text(
                      "Sejak",
                      style: mediumText.copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: height * 0.003),
                    child: Text(
                      "12.00 WIB",
                      style: smallText.copyWith(
                          fontSize: 11, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: height * 0.03),
                    child: Text(
                      "Perkiraan Tarif",
                      style: mediumText.copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: height * 0.003),
                    child: Text(
                      "Rp.15000,-",
                      style: smallText.copyWith(
                          fontSize: 11, fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: height * 0.3, bottom: height * 0.03),
                child: Container(
                  height: height * 0.07,
                  width: width * 0.85,
                  decoration: BoxDecoration(
                    color: orange.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: GestureDetector(
                    onTap: (){
                      Get.to(ScanQr());
                    },
                    child: Row(
                      
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 27),
                          child: Text(
                            "Keluar Parkir",
                            style: mediumText.copyWith(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 27),
                          child: Text(
                            ">>>",
                            style: mediumText.copyWith(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
