import 'package:flutter/material.dart';

import '../../utility.dart';

class CustomizedFloatingButton extends StatelessWidget {
  final String title;
  final Function() onPressed;
  const CustomizedFloatingButton({super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: scaledHeight(44),
        width: scaledWidth(325),
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          color: Color(0xff6750A4),
          borderRadius: BorderRadius.all(Radius.circular(100))
        ),
        child: Text(title, style: TextStyle(
          color: Colors.white,
          fontSize: scaledHeight(14),
          fontFamily: "roboto",
          fontWeight: FontWeight.w600
        ),),
      ),
    );
  }
}
