import 'package:ez_parky/app/modules/scan_qr/scan_qr.dart';
import 'package:flutter/material.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';

import '../../data/const/fonts.dart';

class GenerateQr extends StatefulWidget {
  const GenerateQr({super.key});

  @override
  State<GenerateQr> createState() => _GenerateQrState();
}

class _GenerateQrState extends State<GenerateQr> {
  String? qr_data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Generate QR", style: poppins.copyWith(fontSize: 14),),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => const ScanQr()));
            },
            child: const Icon(
              Icons.qr_code_scanner,
            ),
          ),
        ],
      ),
      body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(onSubmitted: (value){
            setState(() {
              qr_data = value;
            });
          },),
          if(qr_data != null) PrettyQrView.data(data: qr_data!),
        ],
      )),
    );
  }
}
