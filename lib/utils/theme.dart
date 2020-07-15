import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

HexColor primaryColor = HexColor("008EE2");
HexColor accentColor = HexColor("008EE2");
HexColor muteTextColor = HexColor("C4C4C4");
HexColor yellow = HexColor("FFBD03");
HexColor teal = HexColor("3AAFAE");
HexColor purple = HexColor("8066B5");
HexColor red = HexColor("FF5555");
HexColor background = HexColor("FFFFFF");
HexColor greyBackground = HexColor("E6E6E6");

themeData(context) => ThemeData(
      textTheme: GoogleFonts.ubuntuTextTheme(Theme.of(context).textTheme),
      primaryColor: primaryColor,
      primarySwatch: Colors.blue,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    );

darkThemeData(context) => ThemeData.dark().copyWith(
      textTheme: GoogleFonts.ubuntuTextTheme(Theme.of(context).textTheme),
      primaryColor: Colors.blue,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      
    );

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
