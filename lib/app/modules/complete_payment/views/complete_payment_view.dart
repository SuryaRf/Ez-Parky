import 'package:ez_parky/app/modules/navigation/views/navigation_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../data/const/colors.dart';
import '../../../data/const/fonts.dart';
import '../controllers/complete_payment_controller.dart';

class CompletePaymentView extends GetView<CompletePaymentController> {
  const CompletePaymentView({super.key});
  @override
  Widget build(BuildContext context) {
    final height =
        MediaQuery.of(Get.context!).size.height - AppBar().preferredSize.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Bukti Pembayaran",
                            style: mediumText.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                          Text(
                            "2341763490A8",
                            style: poppins.copyWith(
                                color: Colors.white, fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: height * 0.03),
                  child: Text("Pembayaran selesai",
                      style: poppins.copyWith(
                          color: Colors.green,
                          fontSize: 18,
                          fontWeight: FontWeight.bold)),
                ),
              ),
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: height * 0.02),
                  child: Icon(
                    Icons.done,
                    size: width * 0.2,
                    color: Colors.green,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: width * 0.05,
                ),
                child: Text(
                  "Detail Parkir",
                  style: poppins.copyWith(
                      fontSize: 14, fontWeight: FontWeight.bold, color: blueText),
                ),
              ),
              Divider(
                  color: Colors.grey,
                  thickness: 1,
                  indent: width * 0.05,
                  endIndent: width * 0.05),
              Padding(
                padding: EdgeInsets.only(
                    left: width * 0.05, right: width * 0.05, top: height * 0.02),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Jenis Kendaraan",
                      style: TextStyle(color: blueText),
                    ),
                    Text(
                      "Mobil - L  6750  K",
                      style: TextStyle(color: blueText),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: width * 0.05, right: width * 0.05, top: height * 0.015),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Slot",
                      style: TextStyle(color: blueText),
                    ),
                    Text(
                      "GF - B14",
                      style: TextStyle(color: blueText),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: width * 0.05, right: width * 0.05, top: height * 0.015),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Lokasi",
                      style: TextStyle(color: blueText),
                    ),
                    Text(
                      "Matos Pintu Utara",
                      style: TextStyle(color: blueText),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: width * 0.05, right: width * 0.05, top: height * 0.015),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Biaya Per Jam",
                      style: TextStyle(color: blueText),
                    ),
                    Text(
                      "Rp5000,-",
                      style: TextStyle(color: blueText),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: width * 0.05, right: width * 0.05, top: height * 0.015),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Tanggal",
                      style: TextStyle(color: blueText),
                    ),
                    Text(
                      "22 - 8 - 2024",
                      style: TextStyle(color: blueText),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: width * 0.05, right: width * 0.05, top: height * 0.015),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Waktu Masuk",
                      style: TextStyle(color: blueText),
                    ),
                    Text(
                      "11.55 WIB",
                      style: TextStyle(color: blueText),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: width * 0.05, right: width * 0.05, top: height * 0.015),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Waktu Keluar",
                      style: TextStyle(color: blueText),
                    ),
                    Text(
                      "16.25 WIB",
                      style: TextStyle(color: blueText),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: width * 0.05, right: width * 0.05, top: height * 0.015),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total waktu parkir",
                      style: TextStyle(color: blueText),
                    ),
                    Text(
                      "5 Jam",
                      style: TextStyle(color: blueText),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: width * 0.05, top: height * 0.03),
                child: Text(
                  "Pembayaran",
                  style: poppins.copyWith(
                      fontSize: 14, fontWeight: FontWeight.bold, color: blueText),
                ),
              ),
              Divider(
                  color: Colors.grey,
                  thickness: 1,
                  indent: width * 0.05,
                  endIndent: width * 0.05),
              Padding(
                padding: EdgeInsets.only(
                    left: width * 0.05, right: width * 0.05, top: height * 0.015),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Total Biaya",
                      style: TextStyle(color: blueText),
                    ),
                    Text(
                      "Mobil - L  6750  K",
                      style: TextStyle(color: blueText),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: width * 0.05, right: width * 0.05, top: height * 0.015),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Metode Pembayaran",
                      style: TextStyle(color: blueText),
                    ),
                    Text(
                      "QRIS > BRImo",
                      style: TextStyle(color: blueText),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: height * 0.04),
                child: const Center(
                  child: Text(
                    "Terimakasih Telah Menggunakan\nLayanan Kami",
                    style: TextStyle(color: blueText, fontSize: 12),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(left: width * 0.06, right: width * 0.06, top: height * 0.05),
                child: ElevatedButton(
                  onPressed: () {
                    Get.off(const NavigationView());
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: blueElement,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      "KEMBALI KE BERANDA",
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
  }
}
