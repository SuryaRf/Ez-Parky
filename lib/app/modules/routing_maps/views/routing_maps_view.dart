import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../data/const/colors.dart';
import '../../../data/const/fonts.dart';
import '../controllers/routing_maps_controller.dart';

class RoutingMapsView extends GetView<RoutingMapsController> {
  const RoutingMapsView({super.key});
  @override
  Widget build(BuildContext context) {
    final height =
        MediaQuery.of(Get.context!).size.height - AppBar().preferredSize.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset(
                    "assets/img/routing.jpeg",
                  ),
                  Positioned(
                    top: height * 0.02,
                    child: Padding(
                      padding: EdgeInsets.only(
                          right: width * 0.08, left: width * 0.013),
                      child: Container(
                        height: height * 0.13,
                        width: width * 0.98,
                        decoration: const BoxDecoration(
                          color: orange,
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: width * 0.04),
                              child: GestureDetector(
                                  onTap: () => Get.back(),
                                  child: const Icon(
                                    Icons.arrow_upward,
                                    size: 50,
                                  )),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: width * 0.02),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Jl.Soekarno Soehat",
                                    style: poppins.copyWith(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: height * 0.01),
                                    child: Text(
                                      "Sejauh 500 meter",
                                      style: poppins.copyWith(
                                          color: Colors.black, fontSize: 14),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: width * 0.15),
                              child: Image.asset(
                                "assets/icon/MIC.png",
                                width: width * 0.13,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: height * 0.18,
                    left: width * 0.83,
                    child: Container(
                      width: width * 0.14,
                      height: height * 0.07,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                        color: Colors.white,
                      ),
                      child: Icon(
                        Icons.search,
                        size: height * 0.04,
                      ),
                    ),
                  ),
                  Positioned(
                    top: height * 0.27,
                    left: width * 0.83,
                    child: Container(
                      width: width * 0.14,
                      height: height * 0.07,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                        color: Colors.white,
                      ),
                      child: Icon(
                        Icons.voice_chat,
                        size: height * 0.04,
                      ),
                    ),
                  )
                ],
              ),
              Container(
                height: height * 0.244,
                width: width,
                decoration: BoxDecoration(
                  color: blueElement,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                ),
                child: Padding(
                    padding: EdgeInsets.only(left: width * 0.08, right: width * 0.08, top: height * 0.065),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: width * 0.14,
                          height: height * 0.07,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(60),
                            color: Colors.red,
                          ),
                          child: GestureDetector(
                            onTap: () => Get.back(),
                            child: Icon(
                              Icons.close,
                              size: height * 0.04,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            Text("2 Menit Lagi", style: poppins.copyWith(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)),
                            Padding(
                              padding:  EdgeInsets.only(top: height * 0.03),
                              child: Text("1.5 km   |  8.45  EST ", style: poppins.copyWith(fontSize: 18, color: Colors.white)),
                            ),
                          ],
                        ),
                         Container(
                          width: width * 0.14,
                          height: height * 0.07,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(60),
                            color: Colors.white,
                          ),
                          child: Icon(
                            Icons.navigation_outlined,
                            size: height * 0.04,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
