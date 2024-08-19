import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/cariparkir_controller.dart';

class CariparkirView extends GetView<CariparkirController> {
  const CariparkirView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CariparkirView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'CariparkirView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
