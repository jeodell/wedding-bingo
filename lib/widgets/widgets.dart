import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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

Widget buildTextWithLink(String text, String link, Color color) {
  return InkWell(
    onTap: () async {
      final Uri linkUri = Uri.parse(link);
      if (await canLaunchUrl(linkUri)) {
        launchUrl(linkUri);
      } else {
        throw 'Could not launch $linkUri';
      }
    },
    child: Row(
      children: <Widget>[
        buildText(
          text,
          TextStyle(
            color: color,
            fontSize: 18,
            decoration: TextDecoration.underline,
          ),
        ),
      ],
    ),
  );
}
