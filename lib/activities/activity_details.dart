import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wedding_bingo/widgets/widgets.dart';

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
            child: buildText(
              activityLabel,
              TextStyle(
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

Widget buildActivityDetails(
    List<Map<String, String>> details, Color textColor) {
  final List<Widget> children = <Widget>[];

  for (final Map<String, String> detail in details) {
    if (detail['text'] != null) {
      children.add(
        Padding(
          padding: const EdgeInsets.only(top: 4),
          child: buildText(
            '\u2022 ${detail['text']}',
            TextStyle(
              color: textColor,
              fontSize: 18,
            ),
          ),
        ),
      );
    } else {
      children.add(
        Padding(
          padding: const EdgeInsets.only(top: 4),
          child: RichText(
            text: TextSpan(
              style: TextStyle(
                fontFamily: 'JosefinSans',
                fontSize: 18,
                color: textColor,
              ),
              children: <TextSpan>[
                const TextSpan(
                  text: '\u2022 ',
                ),
                TextSpan(
                  text: detail['before'],
                ),
                TextSpan(
                  text: detail['linkText'],
                  style: const TextStyle(
                    decoration: TextDecoration.underline,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () async {
                      final Uri linkUri = Uri.parse(detail['link']!);
                      if (await canLaunchUrl(linkUri)) {
                        launchUrl(
                          linkUri,
                          mode: LaunchMode.externalApplication,
                        );
                      } else {
                        throw 'Could not launch $linkUri';
                      }
                    },
                ),
                TextSpan(
                  text: detail['after'],
                ),
              ],
            ),
          ),
        ),
      );
    }
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
              onTap: () async {
                final Uri activityUri = Uri.parse(website);
                if (await canLaunchUrl(activityUri)) {
                  launchUrl(activityUri);
                } else {
                  throw 'Could not launch $activityUri';
                }
              },
              child: buildText(
                'READ MORE',
                TextStyle(
                  color: textColor,
                  fontSize: 16,
                ),
              ),
            ),
            InkWell(
              onTap: () async {
                final Uri mapsUri = Uri.parse(maps);
                if (await canLaunchUrl(mapsUri)) {
                  launchUrl(
                    mapsUri,
                    mode: LaunchMode.externalApplication,
                  );
                } else {
                  throw 'Could not launch $mapsUri';
                }
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 8),
                child: buildText(
                  'OPEN IN MAPS',
                  TextStyle(
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
        buildSpacer(),
      ],
    ),
  );
}
