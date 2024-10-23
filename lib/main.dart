import 'package:flutter/material.dart';
import 'package:workoo_flutter/utility.dart';
import 'package:workoo_flutter/view/location.dart';
import 'package:workoo_flutter/view/search_services.dart';
import 'package:workoo_flutter/view/task_details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    initializeScreenData(context);
    return const MaterialApp(
      home: TaskDetails(),
    );
  }
}
