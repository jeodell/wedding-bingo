/*
Day select
List of activites
Links
*/
import 'package:flutter/material.dart';
import 'package:wedding_bingo/theme/colors.dart';
import 'package:wedding_bingo/widgets/widgets.dart';

class Schedule extends StatelessWidget {
  const Schedule({super.key});

  Widget _buildDivider(Color color, String direction) {
    final EdgeInsets padding;
    if (direction == 'right') {
      padding = const EdgeInsets.only(left: 16);
    } else {
      padding = const EdgeInsets.only(right: 16);
    }

    return Expanded(
      child: Padding(
        padding: padding,
        child: Divider(
          color: color,
          thickness: 2,
        ),
      ),
    );
  }

  Widget _buildHeaderWithDivider(String text, Color color) {
    return Row(
      children: <Widget>[
        _buildDivider(color, 'left'),
        Text(
          text,
          style: TextStyle(
            color: color,
            fontSize: 24,
          ),
        ),
        _buildDivider(color, 'right'),
      ],
    );
  }

  Widget _buildDailySchedule(List<String> dailyActivities) {
    final List<Widget> dailyActivitiesWidgets = <Widget>[];
    dailyActivitiesWidgets.add(buildSpacer());
    for (final String activity in dailyActivities) {
      dailyActivitiesWidgets.add(
        Text(
          activity,
          style: const TextStyle(
            color: WeddingColors.pine,
            fontSize: 18,
          ),
        ),
      );
      dailyActivitiesWidgets.add(const SizedBox(height: 8));
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: dailyActivitiesWidgets),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        color: WeddingColors.rain,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.asset(
                'assets/images/mountain.jpg',
              ),
              buildSpacer(),
              Row(
                children: const <Widget>[
                  Spacer(),
                  Text(
                    'Trip Schedule',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 48,
                      fontFamily: 'Marcellus',
                    ),
                  ),
                  Spacer()
                ],
              ),
              const SizedBox(height: 12),
              Row(
                children: const <Widget>[
                  Spacer(),
                  Text(
                    'Sunday 9/11 - Sunday 9/18',
                    style: TextStyle(
                      color: WeddingColors.pine,
                      fontSize: 16,
                    ),
                  ),
                  Spacer()
                ],
              ),
              const SizedBox(height: 48),
              _buildHeaderWithDivider('Sunday | 9/11', WeddingColors.pine),
              _buildDailySchedule(
                <String>[
                  '\u2022 Check-in after 4pm',
                  '\u2022 Grocery shopping (Costco in Wenatchee)',
                  '\u2022 Order pizza for dinner',
                ],
              ),
              buildSpacer(),
              _buildHeaderWithDivider('Monday | 9/12', WeddingColors.pine),
              _buildDailySchedule(
                <String>[
                  '\u2022 J&B go to Chelan Register of Deeds',
                  '\u2022 Electric Bicycle Winery Tour',
                  '\u2022 Steak dinner (Steve, Rhonda, Rachel, and Chris)',
                ],
              ),
              buildSpacer(),
              _buildHeaderWithDivider('Tuesday | 9/13', WeddingColors.pine),
              _buildDailySchedule(
                <String>[
                  '\u2022 Optional Enchantments hike for the masochistic',
                  '\u2022 Rafting tour',
                  '\u2022 Lake Chelan',
                  '\u2022 Lasagna for dinner (Amanda, Derek, and Janice)',
                ],
              ),
              buildSpacer(),
              _buildHeaderWithDivider('Wednesday | 9/14', WeddingColors.pine),
              _buildDailySchedule(
                <String>[
                  '\u2022 Spa day (mani-pedis)',
                  '\u2022 Ohme Gardens',
                  '\u2022 Taco night (Jared, Lindsey, and Nathan)',
                ],
              ),
              buildSpacer(),
              _buildHeaderWithDivider('Thursday | 9/15', WeddingColors.pine),
              _buildDailySchedule(
                <String>[
                  '\u2022 Hiking in the morning/early afternoon',
                  '\u2022 Massages late afternoon',
                  '\u2022 Going out for dinner',
                ],
              ),
              buildSpacer(),
              _buildHeaderWithDivider('Friday | 9/16', WeddingColors.pine),
              _buildDailySchedule(
                <String>[
                  '\u2022 Wedding day!',
                  '\u2022 Ceremony around 4pm',
                  '\u2022 Pictures with the whole group',
                  '\u2022 Dinner from Yodelin around 7pm',
                ],
              ),
              buildSpacer(),
              _buildHeaderWithDivider('Saturday | 9/17', WeddingColors.pine),
              _buildDailySchedule(
                <String>[
                  '\u2022 Olympics',
                  '\u2022 Shawarma for dinner (Jared, Lindsey, J, and B)',
                ],
              ),
              buildSpacer(),
              _buildHeaderWithDivider('Sunday | 9/18', WeddingColors.pine),
              _buildDailySchedule(
                <String>[
                  '\u2022 Check-out before 11am',
                ],
              ),
              buildBottomPadding(),
            ],
          ),
        ),
      ),
    );
  }
}
