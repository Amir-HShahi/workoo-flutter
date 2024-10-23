import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:workoo_flutter/view/components/customized_floating_button.dart';

import '../utility.dart';
import 'components/customized_app_bar.dart';

class TaskDetails extends StatelessWidget {
  const TaskDetails({super.key});

  void pressReviewTaskHandler() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: CustomizedFloatingButton(
          title: "Review Task", onPressed: pressReviewTaskHandler),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: CustomizedAppBar(
          isTitleCentered: false,
          color: const Color(0xfffffbfe),
          title: Text("Task Details",
              style: GoogleFonts.roboto(
                  color: const Color(0xff49454F),
                  fontWeight: FontWeight.w700,
                  fontSize: scaledHeight(22)))),
      body: Column(
        children: [],
      ),
    );
  }
}
