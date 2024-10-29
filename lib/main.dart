import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:workoo/splash_screen.dart';
import 'package:workoo/thems.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themsData,
      home:    const SplashScreen(),
    );
  }
}

