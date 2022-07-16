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
                'assets/images/coast.jpg',
              ),
              const SizedBox(height: 24),
              Row(
                children: const <Widget>[
                  Spacer(),
                  Text(
                    'Day Trips',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 48,
                      fontFamily: 'Marcellus',
                    ),
                  ),
                  Spacer(),
                ],
              ),
              const SizedBox(height: 24),
              buildActivityLabel(
                  'Lake Chelan', WeddingColors.rain, Colors.white70),
              buildActivityDetails(<String>[
                '1 hr away',
                'Boat rentals',
              ], Colors.white70),
              buildActivityReadMore('https://www.parks.wa.gov/531/Lake-Chelan',
                  'https://goo.gl/maps/daEMRgMZnJkNRu4k6', Colors.white70),
              const SizedBox(height: 24),
              buildActivityLabel('Lake Wenatchee State Park',
                  WeddingColors.rain, Colors.white70),
              buildActivityDetails(<String>[
                'Nice beach area',
                'Shorter trails',
                'Kayaking',
              ], Colors.white70),
              buildActivityReadMore(
                  'https://www.parks.wa.gov/535/Lake-Wenatchee',
                  'https://goo.gl/maps/aEcvyBBdnEv9fZKP9',
                  Colors.white70),
              buildBottomPadding(),
            ],
          ),
        ),
      ),
    );

    return buildActivityStack(context, activityWidget);
  }
}
