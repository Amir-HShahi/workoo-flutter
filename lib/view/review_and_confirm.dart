import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utility.dart';
import 'components/customized_app_bar.dart';
import 'components/customized_floating_button.dart';

class ReviewAndConfirm extends StatelessWidget {
  const ReviewAndConfirm({super.key});

  void pressConfirmHandler() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: CustomizedFloatingButton(
          title: "Confirm and Chat", onPressed: pressConfirmHandler),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: CustomizedAppBar(
          isTitleCentered: false,
          color: const Color(0xfffffbfe),
          title: Text("Review and Confirm",
              style: GoogleFonts.roboto(
                  color: const Color(0xff1c1b1f),
                  fontWeight: FontWeight.w400,
                  fontSize: scaledHeight(22)))),
      body: Container(
        padding: EdgeInsets.symmetric(
            vertical: scaledHeight(16), horizontal: scaledHeight(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: scaledHeight(16)),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(width: scaledWidth(212)),
                    Text(
                      "Time and date",
                      style: TextStyle(
                          color: const Color(0xff1c1b1f),
                          fontSize: scaledHeight(20),
                          fontWeight: FontWeight.w600,
                          fontFamily: "roboto"),
                    ),
                    SizedBox(
                      height: scaledHeight(8),
                    ),
                    Row(
                      children: [
                        SvgPicture.asset("assets/calendar_icon.svg",
                            height: scaledHeight(24)),
                        SizedBox(width: scaledWidth(8)),
                        Text("Friday - May 27, 2022",
                            style: TextStyle(
                              color: const Color(0xff625b71),
                              fontSize: scaledHeight(14),
                              fontFamily: "roboto",
                            ))
                      ],
                    ),
                    SizedBox(
                      height: scaledHeight(4),
                    ),
                    Row(
                      children: [
                        SvgPicture.asset("assets/clock_icon.svg",
                            height: scaledHeight(24)),
                        SizedBox(width: scaledWidth(8)),
                        Text("9.30 am",
                            style: TextStyle(
                              color: const Color(0xff625b71),
                              fontSize: scaledHeight(14),
                              fontFamily: "roboto",
                            ))
                      ],
                    )
                  ],
                ),
                SizedBox(width: scaledWidth(16)),
                Column(
                  children: [
                    Image.asset("assets/dianne_profile.png",
                        height: scaledHeight(72)),
                    SizedBox(height: scaledHeight(4)),
                    Text("Dianne Russell",
                        style: TextStyle(
                            color: const Color(0xff625b71),
                            fontSize: scaledHeight(14),
                            fontFamily: "roboto",
                            fontWeight: FontWeight.w600)),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: scaledHeight(20),
            ),
            Container(
              width: double.infinity,
              color: Colors.black.withOpacity(0.16),
              height: scaledHeight(1),
            ),
            SizedBox(
              height: scaledHeight(20),
            ),
            Row(
              children: [
                Text("Payment",
                    style: TextStyle(
                      color: const Color(0xff625b71),
                      fontSize: scaledHeight(14),
                      fontFamily: "roboto",
                    )),
                const Spacer(),
                Text("Add Payment",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: const Color(0xff6750A4),
                      fontSize: scaledHeight(14),
                      fontFamily: "roboto",
                    )),
              ],
            ),
            SizedBox(
              height: scaledHeight(8),
            ),
            Row(
              children: [
                Text("Promos",
                    style: TextStyle(
                      color: const Color(0xff625b71),
                      fontSize: scaledHeight(14),
                      fontFamily: "roboto",
                    )),
                const Spacer(),
                Text("Add Promo Code",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: const Color(0xff6750A4),
                      fontSize: scaledHeight(14),
                      fontFamily: "roboto",
                    )),
              ],
            ),
            SizedBox(
              height: scaledHeight(20),
            ),
            Container(
              width: double.infinity,
              color: Colors.black.withOpacity(0.16),
              height: scaledHeight(1),
            ),
            SizedBox(
              height: scaledHeight(20),
            ),
            Text("Price Details",
                style: TextStyle(
                  color: const Color(0xff1c1b1f),
                  fontSize: scaledHeight(20),
                  fontWeight: FontWeight.w600,
                  fontFamily: "roboto",
                )),
            SizedBox(
              height: scaledHeight(16),
            ),
            Row(
              children: [
                Text("Hourly Rate",
                    style: TextStyle(
                      color: const Color(0xff625b71),
                      fontSize: scaledHeight(14),
                      fontFamily: "roboto",
                    )),
                const Spacer(),
                Text("\$18/hr",
                    style: TextStyle(
                      color: const Color(0xff625B71),
                      fontSize: scaledHeight(16),
                      fontWeight: FontWeight.w600,
                      fontFamily: "roboto",
                    )),
              ],
            ),
            SizedBox(
              height: scaledHeight(8),
            ),
            Row(
              children: [
                Text("Support Fee",
                    style: TextStyle(
                      color: const Color(0xff625b71),
                      fontSize: scaledHeight(14),
                      fontFamily: "roboto",
                    )),
                const Spacer(),
                Text("\$10",
                    style: TextStyle(
                      color: const Color(0xff625B71),
                      fontWeight: FontWeight.w600,
                      fontSize: scaledHeight(16),
                      fontFamily: "roboto",
                    )),
              ],
            ),
            SizedBox(
              height: scaledHeight(20),
            ),
            Container(
              width: double.infinity,
              color: Colors.black.withOpacity(0.16),
              height: scaledHeight(1),
            ),
            SizedBox(
              height: scaledHeight(20),
            ),
            Row(
              children: [
                Text("Total Rate",
                    style: TextStyle(
                      color: const Color(0xff1c1b1f),
                      fontSize: scaledHeight(20),
                      fontWeight: FontWeight.w600,
                      fontFamily: "roboto",
                    )),
                const Spacer(),
                Text("\$28",
                    style: TextStyle(
                      color: const Color(0xff1c1b1f),
                      fontSize: scaledHeight(20),
                      fontWeight: FontWeight.w600,
                      fontFamily: "roboto",
                    )),
              ],
            ),
            SizedBox(height: scaledHeight(20)),
            Text(
                "Your payment method may temporarily show a hold in the amount of \$15 per hour, which is the rate of your Tasker. You have the option to cancel anytime. However, cancellations made less than 24 hours before the scheduled start time may incur a cancellation fee equivalent to one hour of service. Please note that all tasks have a minimum of one hour charge.",
                style: TextStyle(
                  color: const Color(0xff625B71),
                  fontSize: scaledHeight(16),
                  fontFamily: "roboto",
                ))
          ],
        ),
      ),
    );
  }
}
