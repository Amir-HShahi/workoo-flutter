import 'package:flutter/material.dart';
import 'package:workoo_flutter/utility.dart';
import 'package:workoo_flutter/view/location.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    initializeScreenData(context);
    return const MaterialApp(
      home: Location(),
    );
  }
}
