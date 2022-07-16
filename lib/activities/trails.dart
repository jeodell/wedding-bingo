import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wedding_bingo/activities/activity_details.dart';
import 'package:wedding_bingo/activities/activity_stack.dart';
import 'package:wedding_bingo/theme/colors.dart';
import 'package:wedding_bingo/widgets/widgets.dart';

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
              const SizedBox(height: 24),
              buildActivityLabel('Icicle Gorge Nature Loop', WeddingColors.sage,
                  WeddingColors.tahoe),
              buildActivityDetails(<String>[
                '4.2 miles',
                '150 ft elevation gain',
                '35 min drive from house',
                'Impressive rushing creek',
                'Popular, easy hike'
              ], WeddingColors.tahoe),
              buildActivityReadMore(
                  'https://www.wta.org/go-hiking/hikes/icicle-gorge-loop',
                  'https://goo.gl/maps/o8cKuRSGQuWjdt3d6',
                  WeddingColors.tahoe),
              const SizedBox(height: 24),
              buildActivityLabel(
                  'Rat Creek Ridge Trail at Mountain Home Preserve',
                  WeddingColors.sage,
                  WeddingColors.tahoe),
              buildActivityDetails(<String>[
                '3.4 miles',
                '800 ft elevation gain',
                '15 min drive from house',
                'Steep at the beginning but levels off with amazing views of Leavenworth and the surrounding mountains',
                'Not well marked so bring map',
              ], WeddingColors.tahoe),
              buildActivityReadMore(
                  'https://www.cdlandtrust.org/trails-access/trails/mountain-home-trails?fbclid=IwAR07dJxnaytix-lWtwS9__jc7VEZJuAMDgjm8jg9k0PzjudZHpw_FooZJ5I',
                  'https://goo.gl/maps/CS8TADiTfrLFWCMPA',
                  WeddingColors.tahoe),
              const SizedBox(height: 24),
              buildActivityLabel(
                  'Blackbird Island, Waterfront Park in Downtown Leavenworth',
                  WeddingColors.sage,
                  WeddingColors.tahoe),
              buildActivityDetails(<String>[
                '2 miles',
                '100 ft elevation gain',
                '7 min drive from house',
                'River and mountain views from beautiful park in town',
              ], WeddingColors.tahoe),
              buildActivityReadMore(
                  'https://www.wta.org/go-hiking/hikes/blackbird-island-waterfront-park',
                  'https://goo.gl/maps/75UCrprMdpztqoxV8',
                  WeddingColors.tahoe),
              const SizedBox(height: 24),
              buildActivityLabel('South Wedge Mountain Trail',
                  WeddingColors.sage, WeddingColors.tahoe),
              buildActivityDetails(<String>[
                '3 miles',
                '1700 ft elevation gain',
              ], WeddingColors.tahoe),
              buildActivityReadMore(
                  'https://www.alltrails.com/trail/us/washington/south-wedge-mountain-trail',
                  'https://goo.gl/maps/D4dzpGac3sVBZE6j7',
                  WeddingColors.tahoe),
              const SizedBox(height: 24),
              buildActivityLabel(
                  'MORE Trail Guides', WeddingColors.sage, WeddingColors.tahoe),
              Padding(
                padding: const EdgeInsets.only(left: 64),
                child: InkWell(
                  child: const Text(
                    '\u2022 The 7 Best Leavenworth Hikes (Besides the Enchantments)',
                    style: TextStyle(
                      color: WeddingColors.tahoe,
                      fontSize: 18,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  onTap: () {
                    final Uri trailsUri = Uri.parse(
                        'https://smalltownwashington.com/leavenworth-hikes/');
                    launchUrl(trailsUri);
                    return;
                  },
                ),
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
