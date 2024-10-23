import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:workoo_flutter/utility.dart';

class CustomizedSearchBox extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  const CustomizedSearchBox(
      {super.key, required this.hintText, required this.controller});

  void removeInputDataHandler() {
    print(controller.text);
    controller.clear();
    print('-----------------------------------');
    print(controller.text);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
            borderRadius: BorderRadius.all(Radius.circular(scaledHeight(8)))),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: scaledWidth(248),
              child: TextField(
                controller: controller,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: hintText,
                    hintStyle: TextStyle(
                        fontFamily: "roboto",
                        fontSize: scaledHeight(16),
                        color: const Color(0xff625B71)),
                    filled: false),
              ),
            ),
            const Spacer(),
            GestureDetector(
                onTap: removeInputDataHandler,
                child: SvgPicture.asset("assets/remove_input_data.svg"))
          ],
        ),
      ),
    );
  }
}
