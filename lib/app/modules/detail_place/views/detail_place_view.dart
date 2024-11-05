import 'package:ez_parky/app/data/const/colors.dart';
import 'package:ez_parky/app/data/const/fonts.dart';
import 'package:ez_parky/app/data/places.dart';
import 'package:ez_parky/app/modules/detail_floorplan/views/detail_floorplan_view.dart';
import 'package:ez_parky/app/modules/routing_maps/views/routing_maps_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../data/models/place.dart';
import '../controllers/detail_place_controller.dart';

class DetailPlaceView extends GetView<DetailPlaceController> {
  final Place place;
  const DetailPlaceView({Key? key, required this.place}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: height * 0.89,
              child: Stack(
                children: [
                  // Background Image Container
                  Container(
                    height: height * 0.35,
                    width: width,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                    child: Image.asset(
                      "assets/img/matos_detail.png",
                      fit: BoxFit.cover,
                    ),
                  ),

                  // Back Button
                  Positioned(
                    top: 40,
                    left: 20,
                    child: InkWell(
                      onTap: () => Get.back(),
                      child: Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                        ),
                        child: Icon(Icons.arrow_back),
                      ),
                    ),
                  ),

                  // Main Content Card
                  Positioned(
                    top: height * 0.25,
                    left: 0,
                    right: 0,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 10,
                            spreadRadius: 2,
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Malang Town Square,",
                                      style: poppins.copyWith(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Klojen",
                                      style: poppins.copyWith(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 6),
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Text(
                                  "JARAK\n4,3 KM",
                                  style: poppins.copyWith(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Jl. Veteran No.2, Penanggungan,\nKec. Klojen, Malang",
                            style: poppins.copyWith(
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(height: 20),

                          // Navigation Time
                          Container(
                            padding: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: Colors.grey[300]!),
                            ),
                            child: Row(
                              children: [
                                Icon(Icons.directions_car, color: Colors.blue),
                                SizedBox(width: 20),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Navigasi",
                                      style: poppins.copyWith(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "Tiba 15-20 min",
                                      style: poppins.copyWith(fontSize: 11),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Icon(Icons.chevron_right),
                              ],
                            ),
                          ),

                          SizedBox(height: 15),

                          // Visitors Count
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 8, horizontal: 15),
                            decoration: BoxDecoration(
                              color: Colors.yellow[100],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(Icons.visibility, size: 20),
                                SizedBox(width: 5),
                                Text(
                                  "89 orang sedang memantau lokasi ini",
                                  style: poppins.copyWith(fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 8, horizontal: 15),
                            decoration: BoxDecoration(
                              color: Colors.blue[100],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(Icons.navigation, size: 20),
                                SizedBox(width: 5),
                                Text(
                                  "11 orang navigasi ke tempat parkir ini  ",
                                  style: poppins.copyWith(fontSize: 12),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Kami sarankan anda segera datang atau dapat mempertimbangkan kedatangan di lokasi saat ini.",
                            style: poppins.copyWith(fontSize: 12),
                          ),
                          SizedBox(height: 20),

                          // Capacity and Parking Rates
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Kapasitas",
                                        style: poppins.copyWith(
                                          color: Colors.white,
                                          fontSize: 14,
                                        ),
                                      ),
                                      Text(
                                        "150/200",
                                        style: poppins.copyWith(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(width: 15),
                              Expanded(
                                child: Container(
                                  padding: EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                                    color: Colors.blue[100],
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Tarif Parkir",
                                        style: poppins.copyWith(fontSize: 14),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text("Mobil"),
                                              Text("Motor"),
                                              Text("Inap"),
                                            ],
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Text("5000"),
                                              Text("3000"),
                                              Text("20.000"),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),

                          SizedBox(height: 20),

                          // Navigation and Share Buttons
                          Row(
                            children: [
                              Expanded(
                                child: ElevatedButton.icon(
                                  onPressed: () {
                                    Get.to(RoutingMapsView());
                                  },
                                  icon: Icon(
                                    Icons.navigation,
                                    color: Colors.white,
                                  ),
                                  label: Text(
                                    "Navigasi",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.blue,
                                    padding: EdgeInsets.symmetric(vertical: 12),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 15),
                              Expanded(
                                child: OutlinedButton.icon(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.share,
                                    color: Colors.black,
                                  ),
                                  label: Text("Bagikan",
                                      style: TextStyle(color: Colors.black)),
                                  style: OutlinedButton.styleFrom(
                                    padding: EdgeInsets.symmetric(vertical: 12),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Recommendations Section
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Rekomendasi Tempat Untukmu",
                style: poppins.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// return Scaffold(
//   body: SafeArea(
//     child: Column(
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         Center(
//           child: Padding(
//             padding:
//                 EdgeInsets.only(top: height * 0.03, bottom: height * 0.03),
//             child: Container(
//               height: height * 0.07,
//               width: width * 0.9,
//               decoration: BoxDecoration(
//                 color: blueElement,
//                 borderRadius: BorderRadius.circular(20),
//               ),
//               child: Row(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 10),
//                     child: IconButton(
//                       icon: const Icon(Icons.arrow_back),
//                       color: Colors.white,
//                       onPressed: () => Get.back(),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(left: 30),
//                     child: Text(
//                       "For Your Information",
//                       style: mediumText.copyWith(
//                           color: Colors.white,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 18),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(bottom: 10),
//               child: Text(
//                 "Kamu sedang berada di",
//                 style: mediumText.copyWith(
//                     color: orange, fontWeight: FontWeight.bold),
//               ),
//             ),
//             Image.asset("assets/icon/car.png", width: width * 0.17),
//             Padding(
//               padding: EdgeInsets.only(top: height * 0.03),
//               child: Text(
//                 "${place.name} pintu utara",
//                 style: mediumText.copyWith(fontWeight: FontWeight.bold),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(bottom: 10),
//               child: Text(
//                 "Jl. Veteran No. 2 Malang, Indonesia, 6511",
//                 style: smallText.copyWith(fontSize: 11),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.only(top: height * 0.03),
//               child: Column(
//                 children: [
//                   Text(
//                     "Ground Floor",
//                     style: mediumText.copyWith(fontWeight: FontWeight.bold),
//                   ),
//                   Text(
//                     "B-14",
//                     style: mediumText.copyWith(fontWeight: FontWeight.bold),
//                   ),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.only(left: width * 0.04),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   InkWell(
//                     onTap: () =>  Get.to(const DetailFloorplanView()),
//                     child: Text(
//                       "Lihat denah",
//                       style: smallText.copyWith(fontWeight: FontWeight.w500),
//                     ),
//                   ),
//                   Icon(Icons.arrow_right_rounded)
//                 ],
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.only(top: height * 0.03),
//               child: Text(
//                 "Sejak",
//                 style: mediumText.copyWith(fontWeight: FontWeight.bold),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.only(top: height * 0.003),
//               child: Text(
//                 "12.00 WIB",
//                 style: smallText.copyWith(
//                     fontSize: 11, fontWeight: FontWeight.w600),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.only(top: height * 0.03),
//               child: Text(
//                 "Perkiraan Tarif",
//                 style: mediumText.copyWith(fontWeight: FontWeight.bold),
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.only(top: height * 0.003),
//               child: Text(
//                 "Rp.15000,-",
//                 style: smallText.copyWith(
//                     fontSize: 11, fontWeight: FontWeight.w600),
//               ),
//             ),
//           ],
//         ),
//         Padding(
//           padding: EdgeInsets.only(top: height * 0.3),
//           child: Container(
//             height: height * 0.07,
//             width: width * 0.85,
//             decoration: BoxDecoration(
//               color: orange.withOpacity(0.8),
//               borderRadius: BorderRadius.circular(20),
//             ),
//             child: Row(

//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.only(left: 27),
//                   child: Text(
//                     "Keluar Parkir",
//                     style: mediumText.copyWith(
//                         fontWeight: FontWeight.bold, fontSize: 18),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(right: 27),
//                   child: Text(
//                     ">>>",
//                     style: mediumText.copyWith(
//                         fontWeight: FontWeight.bold, fontSize: 20),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ],
//     ),
//   ),
// );
