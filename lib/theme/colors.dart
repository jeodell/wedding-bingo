import 'package:flutter/material.dart';

@immutable
mixin WeddingColors {
  static const int pineValue = 0xFF264436;
  static const int tahoeValue = 0xff3D6575;
  static const int mushroomValue = 0xff896759;
  static const int sageValue = 0xffA4B6B4;
  static const int skyValue = 0xff8BA5C3;
  static const int terracottaValue = 0xffBE7552;
  static const int rainValue = 0xffBFC9CB;
  static const int maineValue = 0xff46638E;
  static const int birchValue = 0xffDFDACC;

  static const Color pine = Color(0xFF264436);
  static const Color tahoe = Color(0xff3D6575);
  static const Color mushroom = Color(0xff896759);
  static const Color sage = Color(0xffA4B6B4);
  static const Color sky = Color(0xff8BA5C3);
  static const Color terracotta = Color(0xffBE7552);
  static const Color rain = Color(0xffBFC9CB);
  static const Color maine = Color(0xff46638E);
  static const Color birch = Color(0xffDFDACC);

  static const MaterialColor primarySwatch =
      MaterialColor(maineValue, <int, Color>{
    50: Color(0xFFE9ECF1),
    100: Color(0xFFC8D0DD),
    200: Color(0xFFA3B1C7),
    300: Color(0xFF7E92B0),
    400: Color(0xFF627A9F),
    500: Color(maineValue),
    600: Color(0xFF3F5B86),
    700: Color(0xFF37517B),
    800: Color(0xFF2F4771),
    900: Color(0xFF20355F),
  });
}
