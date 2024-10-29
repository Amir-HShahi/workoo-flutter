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
  TextEditingController controller = TextEditingController();
  List<String> foundLocations = ["Southeastern Properties"];
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
              controller: controller),
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
          ),
          for (var location in foundLocations) _LocationTile(location: location)
        ],
      ),
    );
  }
}

class _LocationTile extends StatelessWidget {
  final String location;
  const _LocationTile({required this.location});

  void setLocation() {}

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: setLocation,
          child: Container(
            height: scaledHeight(56),
            width: double.infinity,
            padding: EdgeInsets.symmetric(
                vertical: scaledHeight(16), horizontal: scaledWidth(16)),
            child: Row(
              children: [
                SvgPicture.asset("assets/location_logo.svg",
                    height: scaledHeight(24)),
                SizedBox(width: scaledWidth(8)),
                Text(
                  location,
                  style: TextStyle(
                      fontFamily: "roboto",
                      fontSize: scaledHeight(16),
                      color: const Color(0xff625B71)),
                )
              ],
            ),
          ),
        ),
        Container(
          width: double.infinity,
          color: Colors.black.withOpacity(0.16),
          height: scaledHeight(1),
        )
      ],
    );
  }
}
