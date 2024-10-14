import 'dart:convert';

import 'package:ez_parky/app/data/const/colors.dart';
import 'package:ez_parky/app/data/const/fonts.dart';
import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:qr_scanner_overlay/qr_scanner_overlay.dart';
import 'package:http/http.dart' as http;
import 'generate_qr.dart';

class ScanQr extends StatefulWidget {
  const ScanQr({super.key});

  @override
  State<ScanQr> createState() => _ScanQrState();
}

class _ScanQrState extends State<ScanQr> {
  bool isScanCompleted = false;
  bool isFlashOn = false;
  bool isFrontCamera = false;
  void closeScreen() {
    isScanCompleted = false;
  }
  bool isGateOpen = false;

  MobileScannerController controller = MobileScannerController();

  @override
  Widget build(BuildContext context) {
    final height =
        MediaQuery.of(context).size.height - AppBar().preferredSize.height;
    // final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: const Icon(Icons.arrow_back)),
        iconTheme: const IconThemeData(color: Colors.black),
        title: Text(
          "Scan QR",
          style: poppins.copyWith(fontSize: 14),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              setState(() {
                isFlashOn = !isFlashOn;
              });
              controller.toggleTorch();
            },
            child: Icon(
              Icons.flash_on,
              color: isFlashOn ? orange : Colors.grey,
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                isFrontCamera = !isFrontCamera;
              });
              controller.switchCamera();
            },
            child: Icon(
              Icons.camera_front_outlined,
              color: isFrontCamera ? orange : Colors.grey,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => const GenerateQr()));
            },
            child: const Icon(
              Icons.qr_code_2,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Expanded(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Letakan Kode QR di Area Ini",
                        style: poppins.copyWith(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: height * 0.05),
                        child: Text(
                          "Proses Scan Akan Dimulai Otomatis",
                          style: poppins.copyWith(
                              color: Colors.black, fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            Expanded(
                child: Stack(
                  children: [
                    MobileScanner(
                      controller: controller,
                      onDetect: (capture) async {
                        if (isScanCompleted) return;
                        final List<Barcode> barcodes = capture.barcodes;
                        if (barcodes.isNotEmpty) {
                          final String? data = barcodes.first.rawValue;
                          if (data != null) {
                            isScanCompleted = true;
                            // Kirim status True atau False berdasarkan apakah gate sudah terbuka atau belum
                            await sendDataToServer(
                                data, isGateOpen ? "False" : "True");
                            // Toggle status gate
                            isGateOpen = !isGateOpen;

                            // Reset scan completion status setelah beberapa detik
                            Future.delayed(const Duration(seconds: 3), () {
                              setState(() {
                                isScanCompleted = false;
                              });
                            });
                          }
                        }
                      },
                    ),
                    QRScannerOverlay(overlayColor: Colors.black.withOpacity(0.5)),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    "Dikembangkan oleh EZ-PARKY",
                    style: poppins.copyWith(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }



// Fungsi untuk mengirim data ke server
  Future<void> sendDataToServer(String url, String status) async {
    try {
      final response = await http.post(
        Uri.parse(url),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({"data": status}),  // Mengirim status True atau False
      );

      if (response.statusCode == 200) {
        print("Gate ${status == 'True' ? 'opened' : 'closed'} successfully");
      } else {
        print("Failed to update gate: ${response.body}");
      }
    } catch (e) {
      print("Error: $e");
    }
  }
}

//   Future<void> sendDataToServer(String data) async {
//     final response = await http.post(
//       Uri.parse(data), // Data adalah URL yang dikodekan di QR Code
//       headers: {"Content-Type": "application/json"},
//       body: '{"data": "Some data from mobile"}', // Data yang ingin Anda kirim
//     );

//     if (response.statusCode == 200) {
//       print("Data sent successfully");
//     } else {
//       print("Failed to send data");
//     }
//   }
// }




// MobileScanner(
      //   controller: MobileScannerController(
      //     detectionSpeed: DetectionSpeed.noDuplicates,
      //   ),
      //   onDetect: (capture) {
      //     final List<Barcode> barcodes = capture.barcodes;
      //     final Uint8List? image = capture.image;
      //     for (final barcode in barcodes) {
      //       print("BARCODE FOUND");
      //     }
      //     if (image != null) {
      //       showDialog(
      //         context: context,
      //         builder: (context) {
      //           return AlertDialog(
      //             title: Text(
      //               barcodes.first.rawValue ?? "",
      //             ),
      //             content: Image(image: MemoryImage(image)),
      //           );
      //         },
      //       );
      //     }
      //   },
      // ),