import 'package:ez_parky/app/data/const/colors.dart';
import 'package:ez_parky/app/data/const/fonts.dart';
import 'package:ez_parky/app/modules/detail_place/views/detail_place_view.dart';
import 'package:ez_parky/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../data/options.dart';
import '../../../data/places.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    final height =
        MediaQuery.of(Get.context!).size.height - AppBar().preferredSize.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    color: blueElement,
                    height: height * 0.27,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 30, left: 15, bottom: 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: height * 0.03,
                                width: width * 0.6,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Row(
                                  children: [
                                    const Padding(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 10),
                                      child: Icon(Icons.location_on_outlined,
                                          size: 20),
                                    ),
                                    Text(
                                      "Jl. Megachan No. 9, Lowokwaru",
                                      style: smallText.copyWith(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 10),
                                    ),
                                  ],
                                ),
                              ),
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
                          padding: const EdgeInsets.only(left: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: Text(
                                  "Hai, Aisha",
                                  style: largeText.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "Gausah bingung cari ",
                                      style:
                                          smallText.copyWith(color: Colors.white),
                                    ),
                                    TextSpan(
                                      text: "PARKIR",
                                      style: smallText.copyWith(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    TextSpan(
                                      text: " dimana",
                                      style:
                                          smallText.copyWith(color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "Kan ada ",
                                      style:
                                          smallText.copyWith(color: Colors.white),
                                    ),
                                    TextSpan(
                                      text: "EZ PARKY",
                                      style: smallText.copyWith(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                      height: height *
                          0.1), // Placeholder for space between Container and body
                  Container(
                    height: height * 0.6, // Remaining height for the body
                    color: Colors.white,
                  ),
                ],
              ),
              Positioned(
                top: height *
                    0.24, // Adjust position so it overlaps between containers
                left: width * 0.1,
                right: width * 0.1,
                child: Container(
                  height: height * 0.06,
                  width: width * 0.8,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 1,
                        blurRadius: 0.3,
                        color: Colors.black.withOpacity(0.3),
                        offset: const Offset(1, 2),
                      )
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.account_balance_wallet_outlined),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Rp.30.000",
                              style: smallText.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 13),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            const Icon(Icons.control_point_sharp),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Top Up",
                              style: smallText.copyWith(
                                  fontWeight: FontWeight.bold, fontSize: 13),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: height * 0.33),
                child: SizedBox(
                  height: height * 0.3,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: options.length,
                      itemBuilder: (context, index) {
                        return SizedBox(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15, right: 10),
                            child: Column(
                              children: [
                                Image.asset(
                                  options[index].imgAsset,
                                  height: height * 0.06,
                                ),
                                SizedBox(
                                  height: height * 0.01,
                                ),
                                Text(
                                  options[index].title,
                                  style: smallText.copyWith(
                                      fontWeight: FontWeight.bold, fontSize: 11),
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: height * 0.47, left: width * 0.06),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 13),
                      child: Text(
                        "On Parking Now",
                        style: mediumText,
                      ),
                    ),
                    Image.asset(
                      "assets/img/mog.png",
                      width: width * 0.5,
                    ),
                    SizedBox(
                      height: height * 0.04,
                    ),
                    Text(
                      "Baru saja dikunjungi",
                      style: mediumText,
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    SizedBox(
                      height: height * 0.13,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: places.length,
                          itemBuilder: (context, index) {
                            return SizedBox(
                              child: Padding(
                                padding: const EdgeInsets.only(right: 20),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      places[0].imgAsset,
                                      width: width * 0.5,
                                    ),
                                    SizedBox(
                                      height: height * 0.01,
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
                    Text(
                      "Disarankan untukmu",
                      style: mediumText,
                    ),
                    SizedBox(
                      height: height * 0.02,
                    ),
                    SizedBox(
                      height: height * 0.3,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: places.length,
                          itemBuilder: (context, index) {
                            // final place = places[index];
                            return InkWell(
                              onTap: () {
                                // Navigate to DetailPlaceView with the selected place
                                // When navigating
                                Get.toNamed(
                                  Routes.DETAIL_PLACE,
                                  arguments: places[
                                      index], // Ensure this is the correct object
                                );
                              },
                              child: SizedBox(
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        places[index].imgAsset,
                                        width: width * 0.5,
                                      ),
                                      SizedBox(
                                        height: height * 0.01,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
