import 'package:ez_parky/app/data/const/colors.dart';
import 'package:ez_parky/app/data/const/fonts.dart';
import 'package:ez_parky/app/modules/choose_slot/views/choose_slot_view.dart';
import 'package:ez_parky/app/modules/complete_payment/views/complete_payment_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/booking_controller.dart';

class BookingView extends GetView<BookingController> {
  const BookingView({Key? key}) : super(key: key);

  void _showBookingConfirmation(BuildContext context) {
    final height =
        MediaQuery.of(Get.context!).size.height - AppBar().preferredSize.height;
    final width = MediaQuery.of(context).size.width;
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (BuildContext context) {
        return Container(
          height: height * 1,
          width: width * 1,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          ),
          child: Padding(
            padding:  EdgeInsets.only(top: height * 0.01),
            child: Center(
              
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      "Pembayaran",
                      style: poppins.copyWith(
                        color: blueText,
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: EdgeInsets.only(top: height * 0.01),
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
                        top: height * 0.04,
                        bottom: height * 0.003,
                        left: width * 0.05),
                    child: Text(
                      "Nomor Kendaraan",
                      style: poppins.copyWith(
                        color: blueText,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: width * 0.05),
                    child: Text(
                      "L 6750 K",
                      style: poppins.copyWith(
                        color: blueText,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: height * 0.04,
                        bottom: height * 0.003,
                        left: width * 0.05),
                    child: Text(
                      "Biaya Parkir Per Jam",
                      style: poppins.copyWith(
                        color: blueText,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: width * 0.05),
                    child: Text(
                      "Rp5000,-",
                      style: poppins.copyWith(
                        color: blueText,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: height * 0.04,
                        bottom: height * 0.003,
                        left: width * 0.05),
                    child: Text(
                      "Lokasi Slot",
                      style: poppins.copyWith(
                        color: blueText,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: width * 0.05),
                    child: Text(
                      "GF - B14",
                      style: poppins.copyWith(
                        color: blueText,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: height * 0.04,
                        bottom: height * 0.003,
                        left: width * 0.05),
                    child: Text(
                      "Pembayaran",
                      style: poppins.copyWith(
                        color: blueText,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: width * 0.05, right: width * 0.05, top: height * 0.01),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "QRIS >",
                          style: poppins.copyWith(
                            color: blueText,
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          "BRImo",
                          style: poppins.copyWith(
                            color: blueText,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: height * 0.06, ),
                  Padding(
                    padding:  EdgeInsets.only(left: width * 0.05, right: width * 0.06,),
                    child: ElevatedButton(
                      onPressed: () {
                        Get.to(const CompletePaymentView());
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: orange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Center(
                        child: Text(
                          "BAYAR",
                          style: poppins.copyWith(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final height =
        MediaQuery.of(Get.context!).size.height - AppBar().preferredSize.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Booking Slot'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.1),
              child: Row(
                children: [
                  Expanded(
                    child: ClipPath(
                      clipper: LeftArrowClipper(),
                      child: Container(
                        height: 50,
                        color: blueElement,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("12.00",
                                  style: poppins.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 16)),
                              Text(
                                "Min, 29 Okt 2023",
                                style: poppins.copyWith(
                                    color: Colors.white, fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ClipPath(
                      clipper: RightArrowClipper(),
                      child: Container(
                        height: 50,
                        decoration: const BoxDecoration(
                            color: orange,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                            )),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "16.00",
                                style: poppins.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 16),
                              ),
                              Text(
                                "Min, 29 Okt 2023",
                                style: poppins.copyWith(
                                    color: Colors.white, fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: height * 0.04, left: width * 0.1),
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start, // Aligns content to the left
                children: [
                  Text(
                    "Lokasi*",
                    style: poppins.copyWith(
                        color: blueText, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: height * 0.01),
                  Text(
                    "Matos Pintu Utara",
                    style: poppins.copyWith(
                        color: blueText.withOpacity(0.3),
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top:
                            5.0), // Optional: Adds some spacing between the text and underline
                    height: 1.3, // Height of the underline
                    color: blueElement.withOpacity(0.3), // Underline color
                    width:
                        width * 0.8, // Makes the underline as long as possible
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: height * 0.04, left: width * 0.1),
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start, // Aligns content to the left
                children: [
                  Text(
                    "Nomor Kendaraan*",
                    style: poppins.copyWith(
                        color: blueText, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: height * 0.01),
                  Text(
                    "L     6750       K",
                    style: poppins.copyWith(
                        color: blueText.withOpacity(0.3),
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                        top:
                            5.0), // Optional: Adds some spacing between the text and underline
                    height: 1.3, // Height of the underline
                    color: blueElement.withOpacity(0.3), // Underline color
                    width:
                        width * 0.8, // Makes the underline as long as possible
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: height * 0.04, left: width * 0.1),
              child: Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start, // Aligns content to the left
                children: [
                  InkWell(
                    onTap: () => Get.to(const ChooseSlotView()),
                    child: Text(
                      "Pilih Slot   >",
                      style: poppins.copyWith(
                          color: blueText, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: height * 0.01),
                  Text(
                    "LG - B14",
                    style: poppins.copyWith(
                        color: blueText.withOpacity(0.3),
                        fontWeight: FontWeight.bold,
                        fontSize: 14),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top:
                            5.0), // Optional: Adds some spacing between the text and underline
                    height: 1.3, // Height of the underline
                    color: blueElement.withOpacity(0.3), // Underline color
                    width:
                        width * 0.8, // Makes the underline as long as possible
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: height * 0.04, left: width * 0.05),
              child: Image.asset("assets/icon/Date.png", width: width * 0.9),
            ),
            Padding(
              padding: EdgeInsets.only(top: height * 0.3, left: width * 0.05),
              child: GestureDetector(
                onTap: () {
                  _showBookingConfirmation(context);
                },
                child: Container(
                  height: height * 0.07,
                  width: width * 0.9,
                  decoration: BoxDecoration(
                    color: orange,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                      child: Text("Pesan Sekarang",
                          style: poppins.copyWith(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold))),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class LeftArrowClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, 0);
    path.lineTo(size.width - 20, 0);
    path.lineTo(size.width, size.height / 2);
    path.lineTo(size.width - 20, size.height);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class RightArrowClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(20, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(20, size.height);
    path.lineTo(0, size.height / 2);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
