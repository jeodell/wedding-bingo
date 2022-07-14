import 'package:flutter/material.dart';
import 'package:wedding_bingo/activities/activity_details.dart';
import 'package:wedding_bingo/activities/activity_stack.dart';
import 'package:wedding_bingo/theme/colors.dart';

class Trails extends StatelessWidget {
  const Trails({super.key});

  @override
  Widget build(BuildContext context) {
    final Widget activityWidget = Scaffold(
      body: Container(
        height: double.infinity,
        color: WeddingColors.birch,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.asset(
                'assets/images/trails.jpg',
              ),
              const SizedBox(height: 24),
              Row(
                children: const <Widget>[
                  Spacer(),
                  Text(
                    'Trails',
                    style: TextStyle(
                      color: WeddingColors.tahoe,
                      fontSize: 48,
                      fontFamily: 'Marcellus',
                    ),
                  ),
                  Spacer(),
                ],
              ),
              const SizedBox(height: 12),
              buildAtivityLabel('Icicle Gorge Nature Loop'),
              Padding(
                padding: const EdgeInsets.only(left: 64),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    buildActivityDetails('4.2 miles'),
                    buildActivityDetails('150ft elevation gain'),
                    buildActivityDetails('35 min drive from house'),
                    buildActivityDetails('Impressive rushing creek'),
                    buildActivityDetails('Popular, easy hike'),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );

    return buildActivityStack(context, activityWidget);
  }
}
