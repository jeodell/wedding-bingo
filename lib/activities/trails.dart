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
              buildSpacer(),
              Row(
                children: <Widget>[
                  const Spacer(),
                  buildText(
                    'Trails',
                    const TextStyle(
                      color: WeddingColors.tahoe,
                      fontSize: 48,
                      fontFamily: 'Marcellus',
                    ),
                  ),
                  const Spacer(),
                ],
              ),
              buildSpacer(),
              buildActivityLabel(
                'Icicle Gorge Nature Loop',
                WeddingColors.sage,
                WeddingColors.tahoe,
              ),
              buildActivityDetails(
                <Map<String, String>>[
                  <String, String>{'text': '4.2 miles'},
                  <String, String>{'text': '150 ft elevation gain'},
                  <String, String>{'text': '35 min drive from house'},
                  <String, String>{'text': 'Impressive rushing creek'},
                  <String, String>{'text': 'Popular, easy hike'},
                ],
                WeddingColors.tahoe,
              ),
              buildActivityReadMore(
                'https://www.wta.org/go-hiking/hikes/icicle-gorge-loop',
                'https://goo.gl/maps/o8cKuRSGQuWjdt3d6',
                WeddingColors.tahoe,
              ),
              buildSpacer(),
              buildActivityLabel(
                'Rat Creek Ridge Trail at Mountain Home Preserve',
                WeddingColors.sage,
                WeddingColors.tahoe,
              ),
              buildActivityDetails(
                <Map<String, String>>[
                  <String, String>{'text': '3.4 miles'},
                  <String, String>{'text': '800 ft elevation gain'},
                  <String, String>{'text': '15 min drive from house'},
                  <String, String>{
                    'text':
                        'Steep at the beginning but levels off with amazing views of Leavenworth and the surrounding mountains'
                  },
                  <String, String>{'text': 'Not well marked so bring map'},
                ],
                WeddingColors.tahoe,
              ),
              buildActivityReadMore(
                'https://www.cdlandtrust.org/trails-access/trails/mountain-home-trails?fbclid=IwAR07dJxnaytix-lWtwS9__jc7VEZJuAMDgjm8jg9k0PzjudZHpw_FooZJ5I',
                'https://goo.gl/maps/CS8TADiTfrLFWCMPA',
                WeddingColors.tahoe,
              ),
              buildSpacer(),
              buildActivityLabel(
                'Blackbird Island, Waterfront Park in Downtown Leavenworth',
                WeddingColors.sage,
                WeddingColors.tahoe,
              ),
              buildActivityDetails(
                <Map<String, String>>[
                  <String, String>{'text': '2 miles'},
                  <String, String>{'text': '100 ft elevation gain'},
                  <String, String>{'text': '7 min drive from house'},
                  <String, String>{
                    'text':
                        'River and mountain views from beautiful park in town'
                  },
                ],
                WeddingColors.tahoe,
              ),
              buildActivityReadMore(
                'https://www.wta.org/go-hiking/hikes/blackbird-island-waterfront-park',
                'https://goo.gl/maps/75UCrprMdpztqoxV8',
                WeddingColors.tahoe,
              ),
              buildSpacer(),
              buildActivityLabel(
                'South Wedge Mountain Trail',
                WeddingColors.sage,
                WeddingColors.tahoe,
              ),
              buildActivityDetails(
                <Map<String, String>>[
                  <String, String>{'text': '3 miles'},
                  <String, String>{'text': '1700 ft elevation gain'},
                ],
                WeddingColors.tahoe,
              ),
              buildActivityReadMore(
                'https://www.alltrails.com/trail/us/washington/south-wedge-mountain-trail',
                'https://goo.gl/maps/D4dzpGac3sVBZE6j7',
                WeddingColors.tahoe,
              ),
              buildSpacer(),
              buildActivityLabel(
                'MORE Trail Guides',
                WeddingColors.sage,
                WeddingColors.tahoe,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 64),
                child: InkWell(
                  child: buildText(
                    '\u2022 The 7 Best Leavenworth Hikes (Besides the Enchantments)',
                    const TextStyle(
                      color: WeddingColors.tahoe,
                      fontSize: 18,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  onTap: () async {
                    final Uri trailsUri = Uri.parse(
                        'https://smalltownwashington.com/leavenworth-hikes/');
                    if (await canLaunchUrl(trailsUri)) {
                      launchUrl(trailsUri);
                    } else {
                      throw Exception('Could not launch $trailsUri');
                    }
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
