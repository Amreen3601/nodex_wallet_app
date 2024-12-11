import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  static const Color primaryColor = Color(0xFFFFFFFF);
  static const Color secondaryColor = Color(0xFF000000);
  static const Color customBlack = Color(0xFF555555);
  static const Color lightWhite60 = Color(0x99FFFFFF);
  static const Color greencolor = Color(0xFF4CAF50);
  static const Color whiteOpacity90 = Color.fromRGBO(255, 255, 255, 0.9);
  static const Color facebookBlue = Color(0xFF1877F2);
  static const Color googleColor = Color(0xFFFF5722);
  static const Color grey900 = Color(0xFF212121);
  static const Color customGrey = Color(0xFF393737);
  static const Color lightGrey = Color(0xFFB0B0B0);
}

class MyTextStyles {
  static TextStyle regular({
    double fontSize = 14.0,
    Color color = AppColors.lightWhite60,
    FontWeight fontWeight = FontWeight.w400,
  }) {
    return GoogleFonts.montserrat(
      textStyle: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }

  static TextStyle medium({
    double fontSize = 16.0,
    Color color = AppColors.customBlack,
    FontWeight fontWeight = FontWeight.w500,
  }) {
    return GoogleFonts.montserrat(
      textStyle: TextStyle(
        color: color,
        // overflow: TextOverflow.ellipsis,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }

  static TextStyle semiBold({
    double fontSize = 16.0,
    Color color = AppColors.secondaryColor,
    FontWeight fontWeight = FontWeight.w600,
  }) {
    return GoogleFonts.montserrat(
      textStyle: TextStyle(
        color: color,
        overflow: TextOverflow.ellipsis,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }

  static TextStyle bold({
    double fontSize = 30,
    Color color = AppColors.primaryColor,
    FontWeight fontWeight = FontWeight.w700,
  }) {
    return GoogleFonts.montserrat(
      textStyle:
          TextStyle(color: color, fontSize: fontSize, fontWeight: fontWeight),
    );
  }
}
