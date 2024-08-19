import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/onparking_controller.dart';

class OnparkingView extends GetView<OnparkingController> {
  const OnparkingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OnparkingView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'OnparkingView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
