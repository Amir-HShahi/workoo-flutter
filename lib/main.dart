import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:workoo/splash_screen.dart';
import 'package:workoo/thems.dart';
import 'package:workoo/utility.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    initializeScreenData(context);
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themsData,
      home:    const SplashScreen(),
    );
  }
}

