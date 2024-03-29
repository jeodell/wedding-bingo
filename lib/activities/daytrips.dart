import 'package:flutter/material.dart';
import 'package:wedding_bingo/activities/activity_details.dart';
import 'package:wedding_bingo/activities/activity_stack.dart';
import 'package:wedding_bingo/theme/colors.dart';
import 'package:wedding_bingo/widgets/widgets.dart';

class DayTrips extends StatelessWidget {
  const DayTrips({super.key});

  @override
  Widget build(BuildContext context) {
    final Widget activityWidget = Scaffold(
      body: Container(
        height: double.infinity,
        color: WeddingColors.pine,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.asset(
                'assets/images/twins.jpg',
              ),
              buildSpacer(),
              Row(
                children: <Widget>[
                  const Spacer(),
                  buildText(
                    'Day Trips',
                    const TextStyle(
                      color: Colors.white70,
                      fontSize: 48,
                      fontFamily: 'Marcellus',
                    ),
                  ),
                  const Spacer(),
                ],
              ),
              buildSpacer(),
              buildActivityLabel(
                'Lake Chelan',
                WeddingColors.rain,
                Colors.white70,
              ),
              buildActivityDetails(
                <Map<String, String>>[
                  <String, String>{'text': '1 hr away'},
                  <String, String>{'text': 'Boat rentals'},
                ],
                Colors.white70,
              ),
              buildActivityReadMore(
                'https://www.parks.wa.gov/531/Lake-Chelan',
                'https://goo.gl/maps/daEMRgMZnJkNRu4k6',
                Colors.white70,
              ),
              buildSpacer(),
              buildActivityLabel(
                'Lake Wenatchee State Park',
                WeddingColors.rain,
                Colors.white70,
              ),
              buildActivityDetails(
                <Map<String, String>>[
                  <String, String>{'text': 'Nice beach area'},
                  <String, String>{'text': 'Shorter trails'},
                  <String, String>{'text': 'Kayaking'},
                ],
                Colors.white70,
              ),
              buildActivityReadMore(
                'https://www.parks.wa.gov/535/Lake-Wenatchee',
                'https://goo.gl/maps/aEcvyBBdnEv9fZKP9',
                Colors.white70,
              ),
              buildBottomPadding(),
            ],
          ),
        ),
      ),
    );

    return buildActivityStack(context, activityWidget);
  }
}
