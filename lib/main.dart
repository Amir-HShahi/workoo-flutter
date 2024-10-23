import 'package:flutter/material.dart';
import 'package:workoo_flutter/utility.dart';
import 'package:workoo_flutter/view/review_and_confirm.dart';
import 'package:workoo_flutter/view/search_tasker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    initializeScreenData(context);
    return const MaterialApp(
      home: SearchTasker(),
    );
  }
}
