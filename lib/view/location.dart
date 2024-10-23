import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:workoo_flutter/utility.dart';
import 'package:workoo_flutter/view/components/customized_app_bar.dart';

import 'components/customized_search_box.dart';

class Location extends StatefulWidget {
  const Location({super.key});

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  void getCurrentLocationHandler() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomizedAppBar(
          isTitleCentered: false,
          color: const Color(0xffe7e0ec),
          title: Text("Location",
              style: GoogleFonts.roboto(
                  color: const Color(0xff49454F),
                  fontWeight: FontWeight.w700,
                  fontSize: scaledHeight(18)))),
      body: Column(
        children: [
          CustomizedSearchBox(
              hintText: "Find your location",
              controller: TextEditingController()),
          GestureDetector(
            onTap: getCurrentLocationHandler,
            child: Container(
              alignment: Alignment.topLeft,
              width: double.infinity,
              color: const Color(0xffE7E0EC),
              padding: EdgeInsets.only(
                  left: scaledWidth(16), bottom: scaledHeight(16)),
              child: Row(
                children: [
                  SvgPicture.asset("assets/my_location_icon.svg",
                      height: scaledHeight(24)),
                  SizedBox(width: scaledWidth(8)),
                  Text("Current Location",
                      style: TextStyle(
                        fontFamily: "roboto",
                        fontSize: scaledHeight(16),
                      ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
