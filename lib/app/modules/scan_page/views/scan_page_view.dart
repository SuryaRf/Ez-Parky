import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/scan_page_controller.dart';

class ScanPageView extends GetView<ScanPageController> {
  const ScanPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ScanPageView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ScanPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
