import 'package:ez_parky/app/data/const/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../../data/const/fonts.dart';

class ResultScan extends StatefulWidget {
  final String code;
  final Function() closeScreen;

  const ResultScan({super.key, required this.closeScreen, required this.code});

  @override
  State<ResultScan> createState() => _ResultScanState();
}

class _ResultScanState extends State<ResultScan> {
  @override
  Widget build(BuildContext context) {
    final height =
        MediaQuery.of(context).size.height - AppBar().preferredSize.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            widget.closeScreen();
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
          ),
        ),
        centerTitle: true,
        title: Text(
          "QR Scanner",
          style: poppins.copyWith(
              color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          child: Padding(
            padding: EdgeInsets.all(12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                QrImageView(
                  data: widget.code,
                  size: 150,
                  version: QrVersions.auto,
                ),
                Text(
                  "Hasil Scan",
                  style: poppins.copyWith(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(top: height * 0.05, bottom: height * 0.05),
                  child: Text(
                    textAlign: TextAlign.center,
                    widget.code,
                    style: poppins.copyWith(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                ),
                SizedBox(
                  width: width * 0.8,
                  height: height * 0.2,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(backgroundColor: orange),
                    onPressed: () {
                      Clipboard.setData(ClipboardData(text: widget.code));
                  
                    },
                    child: Text(
                      "Copy",
                      style: poppins.copyWith(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
