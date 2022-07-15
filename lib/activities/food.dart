import 'package:flutter/material.dart';
import 'package:wedding_bingo/activities/activity_details.dart';
import 'package:wedding_bingo/activities/activity_stack.dart';
import 'package:wedding_bingo/theme/colors.dart';

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
                'Dinner Only, closed Tues & Wed',
              ], Colors.white70),
              buildActivityReadMore('https://www.watershedpnw.com/',
                  'https://g.page/WatershedPNW?share', Colors.white70),
              const SizedBox(height: 24),
              buildActivityLabel(
                  'Bavarian Bakery', WeddingColors.mushroom, Colors.white70),
              buildActivityDetails(<String>[], Colors.white70),
              const SizedBox(height: 24),
              const SizedBox(height: 48),
            ],
          ),
        ),
      ),
    );

    return buildActivityStack(context, activityWidget);
  }
}
