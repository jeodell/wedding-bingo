import 'package:flutter/material.dart';
import 'package:wedding_bingo/theme/colors.dart';

Widget buildAtivityLabel(String activityLabel) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(16, 0, 0, 16),
    child: Row(
      children: <Widget>[
        const Icon(
          Icons.label,
          color: WeddingColors.sage,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Text(
            activityLabel,
            style: const TextStyle(
              color: WeddingColors.tahoe,
              fontSize: 24,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget buildActivityDetails(String details) {
  return Padding(
    padding: const EdgeInsets.only(top: 4),
    child: Text(
      '\u2022 $details',
      style: const TextStyle(
        color: WeddingColors.maine,
        fontSize: 16,
      ),
    ),
  );
}
