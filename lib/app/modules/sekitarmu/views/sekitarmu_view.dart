import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/sekitarmu_controller.dart';

class SekitarmuView extends GetView<SekitarmuController> {
  const SekitarmuView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SekitarmuView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'SekitarmuView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
