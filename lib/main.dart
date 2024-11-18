import 'package:ez_parky/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (Firebase.apps.isEmpty) {
    await Firebase.initializeApp(
        name: 'ez-parky',
        options: DefaultFirebaseOptions.currentPlatform);
  }
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ez-Parky",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      themeMode: ThemeMode.system,
    ),
  );
}
