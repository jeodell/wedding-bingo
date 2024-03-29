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
        buildText(
          text,
          TextStyle(
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
        buildText(
          activity,
          const TextStyle(
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
                children: <Widget>[
                  const Spacer(),
                  buildText(
                    'Trip Schedule',
                    const TextStyle(
                      color: Colors.white70,
                      fontSize: 48,
                      fontFamily: 'Marcellus',
                    ),
                  ),
                  const Spacer()
                ],
              ),
              const SizedBox(height: 12),
              Row(
                children: <Widget>[
                  const Spacer(),
                  buildText(
                    'Sunday 9/11 - Sunday 9/18',
                    const TextStyle(
                      color: WeddingColors.pine,
                      fontSize: 16,
                    ),
                  ),
                  const Spacer()
                ],
              ),
              const SizedBox(height: 48),
              _buildHeaderWithDivider('Sunday | 9/11', WeddingColors.pine),
              _buildDailySchedule(
                <String>[
                  '\u2022 Check-in after 4pm',
                  '\u2022 Grocery shopping (Costco in Wenatchee)',
                  '\u2022 Order pizza and salads for dinner',
                  '\u2022 House of the Dragon in theatre room',
                ],
              ),
              buildSpacer(),
              _buildHeaderWithDivider('Monday | 9/12', WeddingColors.pine),
              _buildDailySchedule(
                <String>[
                  '\u2022 Breakfast (Amanda, Derek, and Janice)',
                  '\u2022 J&B go to Chelan Register of Deeds',
                  '\u2022 J&B tour Leavenworth Haus Apartments',
                  '\u2022 Plain Cellars Wine and Charcuterie',
                  '\u2022 Steak dinner (Steve, Rhonda, Rachel, and Chris)',
                ],
              ),
              buildSpacer(),
              _buildHeaderWithDivider('Tuesday | 9/13', WeddingColors.pine),
              _buildDailySchedule(
                <String>[
                  '\u2022 Massages for J&B',
                  '\u2022 Lasagna for dinner (Steve and Rhonda - Meat) (Janice, Amanda, and Derek - Veggie)',
                ],
              ),
              buildSpacer(),
              _buildHeaderWithDivider('Wednesday | 9/14', WeddingColors.pine),
              _buildDailySchedule(
                <String>[
                  '\u2022 Hike to Colchuck Lake or Eight-Mile Lake',
                  '\u2022 Kayaking on Lake Wenatchee',
                  '\u2022 Shawarma for dinner (Jared, Lindsey, J, and B)',
                ],
              ),
              buildSpacer(),
              _buildHeaderWithDivider('Thursday | 9/15', WeddingColors.pine),
              _buildDailySchedule(
                <String>[
                  '\u2022 Picking wedding flowers',
                  '\u2022 Golf (J, Jared, Nathan, Steve, and Chris)',
                  '\u2022 Going out for dinner',
                ],
              ),
              buildSpacer(),
              _buildHeaderWithDivider('Friday | 9/16', WeddingColors.pine),
              _buildDailySchedule(
                <String>[
                  '\u2022 Wedding day!',
                  '\u2022 Photographers arrive at 3:00',
                  '\u2022 3:00 J&B Getting ready shots',
                  '\u2022 3:30 J&B First look and 1.5 hours of portraits around Leavenworth Area',
                  '\u2022 5:00 Breathing room (30 mins)',
                  '\u2022 5:30 Ceremony! (30 minutes)',
                  '\u2022 6:00 Family photos (30 minutes)',
                  '\u2022 6:30 Photos with bride & groom on property (30 mins)',
                  '\u2022 6:30 Cocktail hour for everyone else',
                  '\u2022 7:00 Dinner from Yodelin, toasts, and cake',
                  '\u2022 8:00 Tiny dance party',
                ],
              ),
              buildSpacer(),
              _buildHeaderWithDivider('Saturday | 9/17', WeddingColors.pine),
              _buildDailySchedule(
                <String>[
                  '\u2022 Electric Bike Tour around Lake Wenatchee',
                  '\u2022 Wedding Olympics',
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
