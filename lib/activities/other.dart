import 'package:flutter/material.dart';
import 'package:wedding_bingo/activities/activity_details.dart';
import 'package:wedding_bingo/activities/activity_stack.dart';
import 'package:wedding_bingo/theme/colors.dart';
import 'package:wedding_bingo/widgets/widgets.dart';

class Other extends StatelessWidget {
  const Other({super.key});

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
                'assets/images/blueridge.jpg',
              ),
              const SizedBox(height: 24),
              Row(
                children: const <Widget>[
                  Spacer(),
                  Text(
                    'Other',
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
                  'Leavenworth Golf Club', WeddingColors.rain, Colors.white70),
              buildActivityDetails(<String>[
                r'9 Holes M-Th - $30.00',
                r'18 Holes M-Th - $40.00',
                r'18 Holes F-Su & Holidays - $55.00',
              ], Colors.white70),
              buildActivityReadMore('https://leavenworthgolf.com/',
                  'https://goo.gl/maps/Bphb2v6qhDhxoJiBA', Colors.white70),
              const SizedBox(height: 24),
              buildActivityLabel(
                  'Ohme Gardens', WeddingColors.rain, Colors.white70),
              buildActivityDetails(<String>[
                'Open 9-6 every day',
                r'$8 per person',
              ], Colors.white70),
              buildActivityReadMore('https://www.ohmegardens.org/',
                  'https://goo.gl/maps/6sErN4gYTC8Y4hfM8', Colors.white70),
              const SizedBox(height: 24),
              buildActivityLabel(
                  'Aspen Leaf Spa at Sleeping Lady Mountain Resort',
                  WeddingColors.rain,
                  Colors.white70),
              buildActivityDetails(<String>[], Colors.white70),
              buildActivityReadMore('https://www.sleepinglady.com/spa/spa-menu',
                  'https://g.page/aspen-leaf-day-spa?share', Colors.white70),
              const SizedBox(height: 24),
              buildActivityLabel('Studio 1890 Old Time Photos',
                  WeddingColors.rain, Colors.white70),
              buildActivityDetails(<String>[
                'Theme choices: Baravarian, Civil War, Roaring 20s, Pioneer, Saloon, Victorian, Wild Wild West, Wedding'
              ], Colors.white70),
              buildActivityReadMore('https://www.studio1890.com/',
                  'https://goo.gl/maps/V6XsVF5uhomHaU1v8', Colors.white70),
              buildBottomPadding(),
            ],
          ),
        ),
      ),
    );

    return buildActivityStack(context, activityWidget);
  }
}
