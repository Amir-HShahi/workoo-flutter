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
    TextEditingController controller = TextEditingController();
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
                  color: const Color(0xff1c1b1f),
                  fontWeight: FontWeight.w400,
                  fontSize: scaledHeight(22)))),
      body: Column(
        children: [
          SizedBox(height: scaledHeight(16)),
          Row(
            children: [
              SizedBox(width: scaledWidth(16)),
              Column(
                children: [
                  Image.asset("assets/dianne_profile.png", height: scaledHeight(72)),
                  SizedBox(height: scaledHeight(4)),
                  Text("Dianne Russell",
                      style: TextStyle(
                          color: const Color(0xff625b71),
                          fontSize: scaledHeight(14),
                          fontFamily: "roboto",
                          fontWeight: FontWeight.w600)),
                ],
              ),
              SizedBox(width: scaledWidth(16)),
              SizedBox(
                width: scaledWidth(212),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Start the conversation",
                        style: TextStyle(
                            color: const Color(0xff1c1b1f),
                            fontSize: scaledHeight(16),
                            fontFamily: "roboto",
                            fontWeight: FontWeight.w700)),
                    SizedBox(height: scaledHeight(8)),
                    Text(
                        "You're almost done! Share a few details to prepare your Tasker for the job.",
                        style: TextStyle(
                          color: const Color(0xff625b71),
                          fontSize: scaledHeight(14),
                          fontFamily: "roboto",
                        )),
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: scaledHeight(24)),
          Container(
            height: scaledHeight(455),
            width: scaledWidth(328),
            padding: EdgeInsets.symmetric(vertical: scaledHeight(8), horizontal: scaledWidth(16)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(scaledHeight(4))),
              border: Border.all(color: const Color(0xff79747E), width: scaledWidth(1))
            ),
            child: TextField(
              controller: controller,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Write something...",
                  hintStyle: TextStyle(
                      fontFamily: "roboto",
                      fontSize: scaledHeight(16),
                      color: const Color(0xff49454F)),
                  filled: false),
            ),
          )
        ],
      ),
    );
  }
}
