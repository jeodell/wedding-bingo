import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Widget buildActivityLabel(
    String activityLabel, Color labelColor, Color textColor) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(16, 0, 8, 16),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Icon(
          Icons.label,
          color: labelColor,
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Text(
              activityLabel,
              style: TextStyle(
                color: textColor,
                fontSize: 24,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget buildActivityDetails(List<String> details, Color textColor) {
  final List<Widget> children = <Widget>[];

  for (final String detail in details) {
    children.add(Padding(
      padding: const EdgeInsets.only(top: 4),
      child: Text(
        '\u2022 $detail',
        style: TextStyle(
          color: textColor,
          fontSize: 18,
        ),
      ),
    ));
  }

  return Padding(
    padding: const EdgeInsets.fromLTRB(64, 0, 8, 0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: children,
    ),
  );
}

Widget buildActivityReadMore(String website, String maps, Color textColor) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(64, 24, 64, 0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            InkWell(
              onTap: () {
                final Uri activityUri = Uri.parse(website);
                launchUrl(activityUri);
              },
              child: Text(
                'READ MORE',
                style: TextStyle(
                  color: textColor,
                  fontSize: 16,
                ),
              ),
            ),
            InkWell(
              onTap: () {
                final Uri activityUri = Uri.parse(maps);
                launchUrl(activityUri);
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Text(
                  'OPEN IN MAPS',
                  style: TextStyle(
                    color: textColor,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 1),
        Divider(
          color: textColor,
          thickness: 2,
        ),
        const SizedBox(height: 16)
      ],
    ),
  );
}
