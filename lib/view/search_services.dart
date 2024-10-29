import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utility.dart';
import 'components/customized_app_bar.dart';
import 'components/customized_search_box.dart';

class SearchServices extends StatefulWidget {
  const SearchServices({super.key});

  @override
  State<SearchServices> createState() => _SearchServicesState();
}

class _SearchServicesState extends State<SearchServices> {
  TextEditingController controller = TextEditingController();
  List<String> foundServices = ["AC evaporator coil replacement"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomizedAppBar(
          isTitleCentered: false,
          color: const Color(0xffe7e0ec),
          title: Text("Search Services",
              style: GoogleFonts.roboto(
                  color: const Color(0xff49454F),
                  fontWeight: FontWeight.w700,
                  fontSize: scaledHeight(18)))),
      body: Column(
        children: [
          CustomizedSearchBox(
              hintText: "Find your services",
              controller: controller),
          for (var service in foundServices)
            _ServiceTile(service: service)
        ],
      ),
    );
  }
}

class _ServiceTile extends StatelessWidget {
  final String service;
  const _ServiceTile({required this.service});

  void setService() {}

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: setService,
          child: Container(
            height: scaledHeight(56),
            width: double.infinity,
            padding: EdgeInsets.symmetric(
                vertical: scaledHeight(16), horizontal: scaledWidth(16)),
            child: Text(
              service,
              style: TextStyle(
                  fontFamily: "roboto",
                  fontSize: scaledHeight(16),
                  color: const Color(0xff625B71)),
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
