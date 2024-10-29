import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utility.dart';
import 'components/customized_app_bar.dart';

class SearchTasker extends StatefulWidget {
  const SearchTasker({super.key});

  @override
  State<SearchTasker> createState() => _SearchTaskerState();
}

class _SearchTaskerState extends State<SearchTasker> {
  TextEditingController controller = TextEditingController();
  void showFiltersHandler() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomizedAppBar(
          isTitleCentered: false,
          color: const Color(0xffe7e0ec),
          title: Text("Search Tasker",
              style: GoogleFonts.roboto(
                  color: const Color(0xff49454F),
                  fontWeight: FontWeight.w700,
                  fontSize: scaledHeight(18)))),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: scaledHeight(80),
              color: const Color(0xffe7e0ec),
              padding: EdgeInsets.symmetric(
                  vertical: scaledHeight(16), horizontal: scaledWidth(16)),
              child: Container(
                height: scaledHeight(48),
                width: scaledWidth(328),
                padding: EdgeInsets.symmetric(
                    vertical: scaledHeight(12), horizontal: scaledHeight(16)),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.all(Radius.circular(scaledHeight(8)))),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: scaledWidth(248),
                      child: TextField(
                        controller: controller,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Find your tasker",
                            hintStyle: TextStyle(
                                fontFamily: "roboto",
                                fontSize: scaledHeight(16),
                                color: const Color(0xff625B71)),
                            filled: false),
                      ),
                    ),
                    const Spacer(),
                    GestureDetector(
                        onTap: showFiltersHandler,
                        child: SvgPicture.asset("assets/list_filters_icon.svg"))
                  ],
                ),
              ),
            ),
            const _TaskerTile(
                name: "Dianne Russell",
                biography:
                    "Who specializes in installing and maintaining systems used for potable (drinking) water, sewage and drainage in plumbing systems. ",
                profilePath: "assets/dianne_rectangle_profile.png"),
            const _TaskerTile(
                name: "Brooklyn Simmons",
                biography:
                "Trained in all aspects of plumbing, including potable water, sewage, and drainage systems installation and maintenance.",
                profilePath: "assets/brooklyn_image.png"),
            const _TaskerTile(
                name: "Devon Lane",
                biography:
                "Skilled professional in the installation and upkeep of plumbing systems for drinking water, waste management, and drainage.",
                profilePath: "assets/devon_image.png"),

          ],
        ),
      ),
    );
  }
}

class _TaskerTile extends StatelessWidget {
  final String name;
  final String biography;
  final String profilePath;
  const _TaskerTile(
      {required this.name, required this.biography, required this.profilePath});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: scaledHeight(188),
          width: scaledWidth(360),
          padding: EdgeInsets.symmetric(
              vertical: scaledHeight(16), horizontal: scaledWidth(16)),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(profilePath, height: scaledHeight(80)),
                  SizedBox(width: scaledWidth(12)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: scaledWidth(217),
                        child: Row(
                          children: [
                            Text(name,
                                style: TextStyle(
                                    color: const Color(0xff625b71),
                                    fontSize: scaledHeight(14),
                                    fontFamily: "roboto",
                                    fontWeight: FontWeight.w600)),
                            const Spacer(),
                            Text("\$18",
                                style: TextStyle(
                                  color: const Color(0xff625B71),
                                  fontSize: scaledHeight(16),
                                  fontWeight: FontWeight.w600,
                                  fontFamily: "roboto",
                                )),
                            Text("/hr",
                                style: TextStyle(
                                  color: const Color(0xff625B71),
                                  fontSize: scaledHeight(16),
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "roboto",
                                )),
                          ],
                        ),
                      ),
                      SizedBox(height: scaledHeight(8)),
                      Row(
                        children: [
                          SvgPicture.asset("assets/star_icon.svg",
                              height: scaledHeight(20)),
                          SizedBox(width: scaledWidth(4)),
                          Text("4.5(4 reviews)",
                              style: TextStyle(
                                color: const Color(0xff625B71),
                                fontWeight: FontWeight.w400,
                                fontSize: scaledHeight(14),
                                fontFamily: "roboto",
                              ))
                        ],
                      ),
                      SizedBox(height: scaledHeight(8)),
                      Row(
                        children: [
                          SvgPicture.asset("assets/circular_check_icon.svg",
                              height: scaledHeight(20)),
                          SizedBox(width: scaledWidth(4)),
                          Text("5 waiting in line jobs",
                              style: TextStyle(
                                color: const Color(0xff625B71),
                                fontWeight: FontWeight.w400,
                                fontSize: scaledHeight(14),
                                fontFamily: "roboto",
                              ))
                        ],
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(height: scaledHeight(14)),
              Text(biography,
                  style: TextStyle(
                    color: const Color(0xff625B71),
                    fontWeight: FontWeight.w500,
                    fontSize: scaledHeight(14),
                    fontFamily: "roboto",
                  ))
            ],
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
