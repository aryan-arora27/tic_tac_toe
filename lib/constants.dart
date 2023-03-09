import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color kBlueColor = const Color(0xFF4285f4);
Color kGreenColor = const Color(0xFF33a853);
Color kRedColor = const Color(0xFFe94234);
Color kYellowColor = const Color(0xFFfabc01);

getSnackbar(String text, BuildContext context) {
  var snackbar = SnackBar(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      behavior: SnackBarBehavior.floating,
      duration: const Duration(seconds: 5),
      backgroundColor: Colors.grey,
      content: SizedBox(
        height: 20,
        child: Center(
          child: Text(
            text,
            style: GoogleFonts.nunito(color: Colors.black, fontSize: 20),
          ),
        ),
      ));
  ScaffoldMessenger.of(context).showSnackBar(snackbar);
}

class ColorConstants {
  static List<Color> colorList = [
    kGreenColor,
    kBlueColor,
    kYellowColor,
    kRedColor
  ];
  void randomiseTheme() {
    colorList.shuffle();
  }
}
