import 'package:ez_parky/app/data/const/colors.dart';
import 'package:ez_parky/app/data/const/fonts.dart';
import 'package:ez_parky/app/modules/booking/views/booking_view.dart';
import 'package:ez_parky/app/modules/routing_maps/views/routing_maps_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

// import '../../../data/models/place_recomendation.dart';
import '../controllers/cariparkir_controller.dart';

class CariparkirView extends GetView<CariparkirController> {
  const CariparkirView({Key? key}) : super(key: key);
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
                    "assets/img/maps.png",
                  ),
                  Positioned(
                    left: width * 0.27,
                    top: height * 0.25,
                    child: Icon(
                      Icons.location_on_outlined,
                      color: Colors.red,
                      size: height * 0.07,
                    ),
                  ),
                  Container(
                    height: height * 0.08,
                    width: width,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: width * 0.04),
                          child: GestureDetector(
                              onTap: () => Get.back(),
                              child: const Icon(Icons.arrow_back_ios_rounded)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: width * 0.02),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Lokasi Parkir Cepat",
                                style: poppins.copyWith(
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Di Sekitarmu",
                                style: poppins.copyWith(
                                    color: Colors.black, fontSize: 12),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                height: height * 0.282,
                width: width,
                decoration: BoxDecoration(
                  color: blueElement,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.08),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: height * 0.04),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Matos Pintu Utara\n3,3 Km",
                                style: poppins.copyWith(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                            Column(
                              children: [
                                Image.asset("assets/icon/navigation.png",
                                    width: width * 0.2),
                                Padding(
                                  padding: EdgeInsets.only(left: width * 0.05),
                                  child: Text("11 Menit",
                                      style: poppins.copyWith(
                                          fontSize: 14,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold)),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Text("Hampir Penuh",
                              style: poppins.copyWith(
                                fontSize: 12,
                                color: Colors.white,
                              )),
                          Padding(
                            padding: EdgeInsets.only(left: width * 0.03),
                            child: Image.asset("assets/icon/orangeball.png",
                                width: width * 0.04),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: height * 0.03),
                        child: GestureDetector(
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              backgroundColor: Colors.transparent,
                              builder: (BuildContext context) {
                                return Container(
                                  height: height,
                                  width: width * 1,
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(20)),
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.only(top: height * 0.01),
                                    child: Center(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Center(
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                  top: height * 0.01),
                                              child: Text(
                                                "Matos Pintu Utara",
                                                style: poppins.copyWith(
                                                  color: blueText,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Center(
                                            child: Text(
                                              "Jl. Veteran No. 2 Malang, Indonesia, 6511",
                                              style: poppins.copyWith(
                                                color: blueText,
                                                fontSize: 12,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: width * 0.1,
                                                top: height * 0.02),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Icon(
                                                  Icons.circle,
                                                  color: orange,
                                                  size: height * 0.03,
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      left: width * 0.04),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.start,
                                                    children: [
                                                      Padding(
                                                        padding: EdgeInsets.only(
                                                            bottom:
                                                                height * 0.005),
                                                        child: Text("Perkiraan 30 menit mendatang\ntempat penuh",
                                                            style: poppins.copyWith(
                                                                fontSize: 14,
                                                                color: blueText,
                                                                )),
                                                      ),
                                                      
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: width * 0.1,
                                                top: height * 0.03),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Icon(
                                                  Icons.access_time,
                                                  color: blueElement,
                                                  size: height * 0.04,
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      left: width * 0.02),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.start,
                                                    children: [
                                                      Padding(
                                                        padding: EdgeInsets.only(
                                                            bottom:
                                                                height * 0.005),
                                                        child: Text("Jam Buka",
                                                            style: poppins.copyWith(
                                                                fontSize: 14,
                                                                color: blueText,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold)),
                                                      ),
                                                      Text("10.00 - 22.00",
                                                          style: poppins.copyWith(
                                                            fontSize: 14,
                                                            color: blueText,
                                                          ))
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: width * 0.1,
                                                top: height * 0.04),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Icon(
                                                  Icons
                                                      .account_balance_wallet_outlined,
                                                  color: blueElement,
                                                  size: height * 0.04,
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      left: width * 0.02),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.start,
                                                    children: [
                                                      Padding(
                                                        padding: EdgeInsets.only(
                                                            bottom:
                                                                height * 0.005),
                                                        child: Text(
                                                            "Tarif Parkir",
                                                            style: poppins.copyWith(
                                                                fontSize: 14,
                                                                color: blueText,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold)),
                                                      ),
                                                      Text("Rp.2000,- / jam",
                                                          style: poppins.copyWith(
                                                            fontSize: 14,
                                                            color: blueText,
                                                          ))
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: width * 0.1,
                                                top: height * 0.04),
                                            child: Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Icon(
                                                  Icons.local_parking,
                                                  color: blueElement,
                                                  size: height * 0.04,
                                                ),
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      left: width * 0.02),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.start,
                                                    children: [
                                                      Padding(
                                                        padding: EdgeInsets.only(
                                                            bottom:
                                                                height * 0.005),
                                                        child: Text("Kapasitas",
                                                            style: poppins.copyWith(
                                                                fontSize: 14,
                                                                color: blueText,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold)),
                                                      ),
                                                      Column(
                                                        children: [
                                                          Padding(
                                                            padding:  EdgeInsets.only(bottom: height * 0.015, top: height * 0.01),
                                                            child: Text(
                                                                "LG   37 / 40",
                                                                style: poppins.copyWith(
                                                                  fontSize: 14,
                                                                  color: blueText,
                                                                )),
                                                          ),
                                                          Padding(
                                                            padding: EdgeInsets.only(bottom: height * 0.015),
                                                            child: Text(
                                                                "UG   35 / 40",
                                                                style: poppins.copyWith(
                                                                  fontSize: 14,
                                                                  color: blueText,
                                                                )),
                                                          ),
                                                          Padding(
                                                            padding: EdgeInsets.only(bottom: height * 0.015),
                                                            child: Text(
                                                                "GF   39 / 40",
                                                                style: poppins.copyWith(
                                                                  fontSize: 14,
                                                                  color: blueText,
                                                                )),
                                                          ),
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: width * 0.08,
                                              top: height * 0.02,
                                                right: width * 0.08),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceBetween,
                                              children: [
                                                GestureDetector(
                                                  onTap: () => Get.to(const RoutingMapsView()),
                                                  child: Container(
                                                    width: width * 0.4,
                                                    height: height * 0.05,
                                                    decoration: BoxDecoration(
                                                      color: blueElement,
                                                      borderRadius:
                                                          BorderRadius.circular(10),
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        "Navigasi",
                                                        style: poppins.copyWith(
                                                            color: Colors.white,
                                                            fontWeight:
                                                                FontWeight.bold),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                GestureDetector(
                                                  onTap: () => Get.to(const BookingView()),
                                                  child: Container(
                                                    width: width * 0.4,
                                                    height: height * 0.05,
                                                    decoration: BoxDecoration(
                                                      color:
                                                          orange.withOpacity(0.7),
                                                      borderRadius:
                                                          BorderRadius.circular(10),
                                                    ),
                                                    child: Center(
                                                        child: Text(
                                                      "Pesan Sekarang",
                                                      style: poppins.copyWith(
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    )),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          
                                        
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          child: Container(
                            height: height * 0.05,
                            width: width,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(Radius.circular(15)),
                            ),
                            child: Center(
                              child: Text(
                                "Lihat Detail Lokasi",
                                style: poppins.copyWith(
                                    fontWeight: FontWeight.bold, fontSize: 12),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
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
