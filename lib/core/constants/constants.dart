import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Constants {
  static TextStyle title1 = GoogleFonts.rubik(
    fontSize: 15,
    color: Colors.blue,
    fontWeight: FontWeight.normal,
  );
  static TextStyle title1Normal = GoogleFonts.rubik(
    fontSize: 15,
    color: Colors.black,
    fontWeight: FontWeight.normal,
  );
  static TextStyle title1bold = GoogleFonts.rubik(
    fontSize: 17,
    fontWeight: FontWeight.bold,
  );
  static TextStyle textgrey = GoogleFonts.rubik(
    fontSize: 15,
    color: Colors.grey,
    fontWeight: FontWeight.normal,
  );

  static TextStyle title1boldWhite = GoogleFonts.rubik(
    fontSize: 20,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );

  static TextStyle title1boldblack = GoogleFonts.rubik(
    fontSize: 20,
    color: Colors.black,
    fontWeight: FontWeight.bold,
  );

  static Decoration container = BoxDecoration(
    color: Colors.grey[200],
    borderRadius: BorderRadius.circular(5),
  );

  static Decoration containergrey = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(10),
    boxShadow: [
      BoxShadow(
        color: Colors.grey,
        blurRadius: 5.0,
      ),
    ],
  );

  static Decoration containergrey1 = BoxDecoration(
    color: Colors.grey[300],
    borderRadius: BorderRadius.circular(20),
  );
  static Decoration container4 = BoxDecoration(
    color: Colors.grey,
    borderRadius: BorderRadius.circular(5),
  );

  static Decoration container3 = BoxDecoration(
    color: green,
    borderRadius: BorderRadius.circular(5),
  );

  static Decoration container1 = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(10),
  );

  static Decoration container2 = BoxDecoration(
    border: Border.all(color: Colors.grey),
    borderRadius: BorderRadius.circular(5),
  );
  static Decoration containergoogle = BoxDecoration(
    border: Border.all(color: Colors.blue),
    borderRadius: BorderRadius.circular(5),
  );

  static Color green = Color.fromRGBO(28, 132, 132, 10);
  static Color greenLight = Color.fromRGBO(1, 167, 168, 10);
}
