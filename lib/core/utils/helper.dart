import 'package:flutter/material.dart';

class Helper {
  static double getResponsiveWidth(
    BuildContext context, {
    required double width,
  }) {
    double screenWidth = MediaQuery.sizeOf(context).width;
    return width * (screenWidth / 400).clamp(0.8, 1.2);
  }

  static double getResponsiveHeight(
    BuildContext context, {
    required double height,
  }) {
    double screenHeight = MediaQuery.sizeOf(context).height;
    return height * (screenHeight / 800).clamp(0.8, 1.2);
  }
}
