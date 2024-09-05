import 'dart:typed_data';

import 'package:ez_parky/app/data/const/colors.dart';
import 'package:ez_parky/app/data/const/fonts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:qr_scanner_overlay/qr_scanner_overlay.dart';

import 'generate_qr.dart';
import 'result_scan.dart';

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
  MobileScannerController controller = MobileScannerController();

  @override
  Widget build(BuildContext context) {
    final height =
        MediaQuery.of(context).size.height - AppBar().preferredSize.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      
      backgroundColor: Colors.white,
      drawer: const Drawer(),
      appBar: AppBar(
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
            child: Icon(
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
                flex: 4,
                child: Stack(
                  children: [
                    MobileScanner(
                      controller: MobileScannerController(
                        detectionSpeed: DetectionSpeed.noDuplicates,
                      ),
                      onDetect: (capture) {
                        final List<Barcode> barcodes = capture.barcodes;
                        final Uint8List? image = capture.image;
                        for (final barcode in barcodes) {
                          print("BARCODE FOUND");
                        }
                        if (!isScanCompleted) {
                          String code = barcodes.first.rawValue ?? "";
                          isScanCompleted = true;
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ResultScan(
                                closeScreen: closeScreen,
                                code: code,
                              ),
                            ),
                          );
                        }
                      },
                    ),
                    QRScannerOverlay(
                      overlayColor: Colors.white,
                    )
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
}


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