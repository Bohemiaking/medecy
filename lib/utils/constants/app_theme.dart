import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData appTheme() => ThemeData(
    fontFamily: GoogleFonts.poppins().fontFamily,
    primarySwatch: Colors.orange,
    splashColor: Colors.orange.shade200);

textApp() {
  return const TextStyle(
      color: Color(0xff044683), fontSize: 14, fontWeight: FontWeight.bold);
}

textMedium() {
  return const TextStyle(
    color: Color(0xff777777),
    fontSize: 12,
  );
}

textOrange() {
  return const TextStyle(
      color: Color(0xfff47622), fontSize: 20, fontWeight: FontWeight.bold);
}

textWhite() {
  return const TextStyle(
      color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold);
}

text5c5c5c() {
  return const TextStyle(
      color: Color(0xff5c5c5c), fontSize: 12, fontWeight: FontWeight.bold);
}

textGreen() {
  return const TextStyle(
      color: Colors.green, fontSize: 14, fontWeight: FontWeight.bold);
}
