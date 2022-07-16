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
              const SizedBox(height: 24),
              Row(
                children: const <Widget>[
                  Spacer(),
                  Text(
                    'Food',
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
                  'The Watershed Cafe', WeddingColors.mushroom, Colors.white70),
              buildActivityDetails(<String>[
                'Farm to Table',
                'Pacific Northwest Cuisine',
                'Downtown Leavenworth',
                'Dinner Only',
                'Closed Tues & Wed',
              ], Colors.white70),
              buildActivityReadMore('https://www.watershedpnw.com/',
                  'https://g.page/WatershedPNW?share', Colors.white70),
              const SizedBox(height: 24),
              buildActivityLabel(
                  "Visconti's", WeddingColors.mushroom, Colors.white70),
              buildActivityDetails(<String>[
                'Fancy Italian',
              ], Colors.white70),
              buildActivityReadMore('https://www.viscontis.com/home',
                  'https://goo.gl/maps/LcXmTHP1Gs2fHHVE6', Colors.white70),
              const SizedBox(height: 24),
              buildActivityLabel(
                  'Valley Cafe', WeddingColors.mushroom, Colors.white70),
              buildActivityDetails(<String>[
                'Bouygues',
              ], Colors.white70),
              buildActivityReadMore('https://valleycafeleavenworth.com/menu/',
                  'https://goo.gl/maps/oZnVTHV6ypuceSL17', Colors.white70),
              const SizedBox(height: 24),
              buildActivityLabel(
                  'South', WeddingColors.mushroom, Colors.white70),
              buildActivityDetails(<String>[
                'Latin American',
              ], Colors.white70),
              buildActivityReadMore('https://www.southrestaurants.com/',
                  'https://goo.gl/maps/uMU9LHvqE5NcBpZs7', Colors.white70),
              const SizedBox(height: 24),
              buildActivityLabel(
                  'Munchen Haus', WeddingColors.mushroom, Colors.white70),
              buildActivityDetails(<String>['Nice patio'], Colors.white70),
              buildActivityReadMore('https://www.munchenhaus.com/',
                  'https://goo.gl/maps/ur8RMnwdB2wNJfJM7', Colors.white70),
              const SizedBox(height: 24),
              buildActivityLabel(
                  'Bavarian Bakery', WeddingColors.mushroom, Colors.white70),
              buildActivityDetails(<String>[
                'Strudels, danishes, pretzels, cakes, and more',
              ], Colors.white70),
              buildActivityReadMore(
                  'https://www.facebook.com/bavarianbakeryofwa/',
                  'https://goo.gl/maps/EcC6NT6EEb2c9yiw7',
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
