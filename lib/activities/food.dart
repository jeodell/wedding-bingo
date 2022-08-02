/*
raptor egg - eggs for breakfast
kylo ren - visconti's
smell pennies - worth every penny somewhere
trombone - double oven amenity
batman - movie theatre amenity
tuco infinity stones - tuco night
*/
import 'package:flutter/material.dart';
import 'package:wedding_bingo/activities/activity_details.dart';
import 'package:wedding_bingo/activities/activity_stack.dart';
import 'package:wedding_bingo/theme/colors.dart';
import 'package:wedding_bingo/widgets/widgets.dart';

class Food extends StatelessWidget {
  const Food({super.key});

  @override
  Widget build(BuildContext context) {
    final Widget activityWidget = Scaffold(
      body: Container(
        height: double.infinity,
        color: WeddingColors.terracotta,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.asset(
                'assets/images/coast.jpg',
              ),
              buildSpacer(),
              Row(
                children: <Widget>[
                  const Spacer(),
                  buildText(
                    'Food',
                    const TextStyle(
                      color: Colors.white70,
                      fontSize: 48,
                      fontFamily: 'Marcellus',
                    ),
                  ),
                  const Spacer(),
                ],
              ),
              buildActivityLabel(
                'Yodelin',
                WeddingColors.mushroom,
                Colors.white70,
              ),
              buildActivityDetails(
                <Map<String, String>>[
                  <String, String>{'text': 'Meal for the Reception'},
                  <String, String>{'text': 'Rice Bowls and Soups'},
                  <String, String>{'text': 'Burgers and Sandwiches'},
                ],
                Colors.white70,
              ),
              buildActivityReadMore(
                'https://yodelinbroth.com/',
                'https://goo.gl/maps/ic848o1n56tycNwYA',
                Colors.white70,
              ),
              buildSpacer(),
              buildActivityLabel(
                'The Watershed Cafe',
                WeddingColors.mushroom,
                Colors.white70,
              ),
              buildActivityDetails(
                <Map<String, String>>[
                  <String, String>{'text': 'Farm to Table'},
                  <String, String>{'text': 'Pacific Northwest Cuisine'},
                  <String, String>{'text': 'Downtown Leavenworth'},
                  <String, String>{'text': 'Dinner Only'},
                  <String, String>{'text': 'Closed Tues & Wed'},
                ],
                Colors.white70,
              ),
              buildActivityReadMore(
                'https://www.watershedpnw.com/',
                'https://goo.gl/maps/YUJVg1cCiqrsgoV49',
                Colors.white70,
              ),
              buildSpacer(),
              buildActivityLabel(
                "Visconti's",
                WeddingColors.mushroom,
                Colors.white70,
              ),
              buildActivityDetails(
                <Map<String, String>>[
                  <String, String>{'text': 'Fancy Italian'},
                  <String, String>{
                    'before': 'Better than ',
                    'linkText': 'Olive Garden',
                    'after': '',
                    'link': 'https://www.youtube.com/watch?v=ow-na1zDdQw'
                  },
                ],
                Colors.white70,
              ),
              buildActivityReadMore(
                'https://www.viscontis.com/home',
                'https://goo.gl/maps/LcXmTHP1Gs2fHHVE6',
                Colors.white70,
              ),
              buildSpacer(),
              buildActivityLabel(
                'Valley Cafe',
                WeddingColors.mushroom,
                Colors.white70,
              ),
              buildActivityDetails(
                <Map<String, String>>[
                  <String, String>{'text': 'Burgers and smoothies'},
                ],
                Colors.white70,
              ),
              buildActivityReadMore(
                'https://valleycafeleavenworth.com/menu/',
                'https://goo.gl/maps/oZnVTHV6ypuceSL17',
                Colors.white70,
              ),
              buildSpacer(),
              buildActivityLabel(
                'South',
                WeddingColors.mushroom,
                Colors.white70,
              ),
              buildActivityDetails(
                <Map<String, String>>[
                  <String, String>{'text': 'Latin American'},
                ],
                Colors.white70,
              ),
              buildActivityReadMore(
                'https://www.southrestaurants.com/',
                'https://goo.gl/maps/uMU9LHvqE5NcBpZs7',
                Colors.white70,
              ),
              buildSpacer(),
              buildActivityLabel(
                'Munchen Haus',
                WeddingColors.mushroom,
                Colors.white70,
              ),
              buildActivityDetails(
                <Map<String, String>>[
                  <String, String>{
                    'before': 'Brats, bocks, franks, ',
                    'linkText': 'dogs',
                    'after': ', and sausages',
                    'link':
                        'https://youtube.com/shorts/tRHhyocsbv8?feature=share'
                  },
                  <String, String>{'text': 'Nice patio'},
                ],
                Colors.white70,
              ),
              buildActivityReadMore(
                'https://www.munchenhaus.com/',
                'https://goo.gl/maps/ur8RMnwdB2wNJfJM7',
                Colors.white70,
              ),
              buildSpacer(),
              buildActivityLabel(
                'Bavarian Bakery',
                WeddingColors.mushroom,
                Colors.white70,
              ),
              buildActivityDetails(
                <Map<String, String>>[
                  <String, String>{
                    'text': 'Strudels, danishes, pretzels, cakes, and more'
                  },
                ],
                Colors.white70,
              ),
              buildActivityReadMore(
                'https://www.facebook.com/bavarianbakeryofwa/',
                'https://goo.gl/maps/EcC6NT6EEb2c9yiw7',
                Colors.white70,
              ),
              buildSpacer(),
              buildActivityLabel(
                'Whistlepunk Ice Cream Co.',
                WeddingColors.mushroom,
                Colors.white70,
              ),
              buildActivityDetails(
                <Map<String, String>>[
                  <String, String>{
                    'before': '',
                    'linkText': '10/10',
                    'after': ' ice cream',
                    'link': 'https://youtu.be/SLP9mbCuhJc?t=2',
                  },
                ],
                Colors.white70,
              ),
              buildActivityReadMore(
                'https://whistlepunkicecream.com/',
                'https://goo.gl/maps/ekzkAJJPC5ri2uf47',
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
