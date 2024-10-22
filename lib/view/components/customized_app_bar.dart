import 'package:flutter/material.dart';

import '../../utility.dart';

class CustomizedAppBar extends PreferredSize {
  final bool isTitleCentered;
  final Color color;
  final Text title;
  CustomizedAppBar(
      {super.key,
      required this.isTitleCentered,
      required this.color,
      required this.title})
      : super(
            preferredSize: Size(double.infinity, scaledHeight(64)),
            child: MyAppBar(
              isTitleCentered: isTitleCentered,
              color: color,
              title: title,
            ));
}

class MyAppBar extends StatelessWidget {
  final bool isTitleCentered;
  final Color color;
  final Text title;
  const MyAppBar(
      {super.key,
      required this.isTitleCentered,
      required this.color,
      required this.title});

  @override
  Widget build(BuildContext context) {
    void pressBackButtonHandler() {
      Navigator.pop(context);
    }

    return SafeArea(
      child: Container(
        height: scaledHeight(64),
        width: scaledWidth(360),
        color: color,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(width: scaledWidth(16)),
            GestureDetector(
              onTap: pressBackButtonHandler,
              child: Image(
                  image: const AssetImage("assets/app_bar_back_icon.png"),
                  height: scaledHeight(24)),
            ),
            SizedBox(width: scaledWidth(4)),
            isTitleCentered
                ? Expanded(
                  child: Center(
                      child: title,
                    ),
                )
                : title,
            SizedBox(width: scaledWidth(40))
          ],
        ),
      ),
    );
  }
}
