import 'package:flutter/material.dart';

Widget buildBottomPadding() {
  return const SizedBox(height: 48);
}

Widget buildSpacer() {
  return const SizedBox(height: 24);
}

Widget buildText(String text,
    [TextStyle style = const TextStyle(), TextAlign align = TextAlign.left]) {
  return Text(
    text,
    textAlign: align,
    style: style,
    textScaleFactor: 1.0,
  );
}
