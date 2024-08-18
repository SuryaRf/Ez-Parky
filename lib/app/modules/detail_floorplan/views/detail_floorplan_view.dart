import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/detail_floorplan_controller.dart';

class DetailFloorplanView extends GetView<DetailFloorplanController> {
  const DetailFloorplanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DetailFloorplanView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'DetailFloorplanView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
