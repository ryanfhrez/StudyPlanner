import 'dart:ui';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

Color blueNavyClr = Color(0xff023895);
const Color aquaColor = Color(0xff03989E);
Color PrimaryColor = Color(0xff314728);
Color GreyColor = Color (0xffA9B0A6);
Color OrangeColor = Color(0xffF9B650);
Color BackgroundColor = Color(0xffE5E5E5);
Color AquaColor = Color(0xff03989E);
Color LightAquaColor = Color(0xffC3E3E8);
Color BlueDark = Color(0xff84CED1);
const Color darkgreyClr = Color(0xFF121212);
Color darkHeaderClr = Color(0xFF424242);
const Color PrimaryClr = aquaColor;

class Themes{
  static final Light = ThemeData(
    backgroundColor: Colors.white,
    primaryColor: PrimaryClr,
    brightness: Brightness.light
  );

  static final dark=ThemeData(
    backgroundColor: darkgreyClr,
    primaryColor: darkgreyClr,
    brightness: Brightness.dark
  );

}
class AppStyle {
  static Color mainColor = Color(0xff03989E);
  static Color accentColor =  Color(0xffF9B650);

  static List<Color> cardColor = [
    Colors.red.shade100,
    Colors.pink.shade100,
    Colors.orange.shade100,
    Colors.yellow.shade100,
    Colors.green.shade100,
    Colors.blue.shade100,
    Colors.blueGrey.shade100,

  ];
}

TextStyle get subHeadingStyle{
  return GoogleFonts.poppins (
    textStyle: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: Get.isDarkMode?Colors.grey[400]:Colors.grey
    )
  );
}

TextStyle get HeadingStyle{
  return GoogleFonts.poppins (
      textStyle: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Get.isDarkMode?Colors.white:Colors.black
      )
  );
}

TextStyle get titleStyle{
  return GoogleFonts.poppins (
      textStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w400,
          color: Get.isDarkMode?Colors.white:Colors.black
      )
  );
}

TextStyle get subTitleStyle{
  return GoogleFonts.poppins (
      textStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: Get.isDarkMode?Colors.grey[100]:Colors.grey[600]
      )
  );
}

double edge = 24;

TextStyle Aquatextstyle = GoogleFonts.poppins(
  fontWeight: FontWeight.w400,
  color: AquaColor,
);

TextStyle regulertextstyle = GoogleFonts.poppins(
  fontWeight: FontWeight.w400,
  color: Colors.black,
);