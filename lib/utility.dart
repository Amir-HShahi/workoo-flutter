import 'package:flutter/material.dart';

MediaQueryData? screenData;

void initializeScreenData(BuildContext context) {
  screenData = MediaQuery.of(context);
}

double scaledHeight(double height) {
  if (screenData != null) {
    return ((screenData!.size.height - screenData!.padding.top - 16) / 800) *
        height;
  }
  return height;
}

double scaledWidth(double width) {
  if (screenData != null) {
    return (screenData!.size.width / 360) * width;
  }
  return width;
}