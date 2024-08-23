import 'package:ez_parky/app/data/const/colors.dart';
import 'package:ez_parky/app/data/models/place_recomendation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/const/fonts.dart';
import '../controllers/around_detail_controller.dart';

class AroundDetailView extends GetView<AroundDetailController> {
  final PlaceRecomendation place;
  const AroundDetailView(this.place, {super.key});

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
            Stack(
              children: [
                SizedBox(
                  width: width,
                  height: height * 0.25,
                  child: Image.asset(
                    "assets/img/kajoetangan.png",
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 16, 
                  left: 16, 
                  child: GestureDetector(
                    onTap: () => Get.back(),
                    child: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 30, // Adjust the icon size as needed
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding:  EdgeInsets.only(top: height * 0.04, left: width * 0.15, right: width * 0.15),
              child: Text(
                place.name,
                style: poppins.copyWith(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: Colors.black),
                    textAlign: TextAlign.center,
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(top: height * 0.03),
              child: Image.asset("assets/img/chart_recomend.png", width: width ,),
            ),
            Padding(
              padding:  EdgeInsets.only(left: width * 0.1, top: height * 0.04),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.access_time, color: blueElement, size: height * 0.04,),
                  Padding(
                    padding:  EdgeInsets.only(left: width * 0.02),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(bottom: height * 0.005),
                          child: Text("Jam Buka", style: poppins.copyWith(fontSize: 14, color: blueText, fontWeight: FontWeight.bold)),
                        ),
                        Text(place.open, style: poppins.copyWith(fontSize: 14, color: blueText, ))
                      ],
                    ),
                  )
                ],
              ),
            ),
             Padding(
              padding:  EdgeInsets.only(left: width * 0.1, top: height * 0.04),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.account_balance_wallet_outlined, color: blueElement, size: height * 0.04,),
                  Padding(
                    padding:  EdgeInsets.only(left: width * 0.02),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(bottom: height * 0.005),
                          child: Text("Tarif Parkir", style: poppins.copyWith(fontSize: 14, color: blueText, fontWeight: FontWeight.bold)),
                        ),
                        Text(place.price, style: poppins.copyWith(fontSize: 14, color: blueText, ))
                      ],
                    ),
                  )
                ],
              ),
            ),
             Padding(
              padding:  EdgeInsets.only(left: width * 0.1, top: height * 0.04),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.local_parking, color: blueElement, size: height * 0.04,),
                  Padding(
                    padding:  EdgeInsets.only(left: width * 0.02),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding:  EdgeInsets.only(bottom: height * 0.005),
                          child: Text("Kapasitas", style: poppins.copyWith(fontSize: 14, color: blueText, fontWeight: FontWeight.bold)),
                        ),
                        Text(place.capacity, style: poppins.copyWith(fontSize: 14, color: blueText, ))
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(left: width * 0.08, top: height * 0.13, right: width * 0.08),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: width * 0.4,
                    height: height * 0.05,
                    decoration: BoxDecoration(
                      color: blueElement,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        "Navigasi"
                        ,style: poppins.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    width: width * 0.4,
                    height: height * 0.05,
                    decoration: BoxDecoration(
                      color: orange.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  child: Center(child: Text("Pesan Sekarang", style: poppins.copyWith(color: Colors.black, fontWeight: FontWeight.bold),)),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
