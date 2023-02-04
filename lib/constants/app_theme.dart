import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData appTheme() => ThemeData(
    fontFamily: GoogleFonts.poppins().fontFamily, primarySwatch: Colors.orange);

textApp() {
  return const TextStyle(
      color: Color(0xff044683), fontSize: 14, fontWeight: FontWeight.bold);
}

textMedium() {
  return const TextStyle(
      color: Color(0xff777777), fontSize: 12,);
}
