import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
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
        color: WeddingColors.rain,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.asset(
                'assets/images/blueridge.jpg',
              ),
              buildSpacer(),
              Row(
                children: <Widget>[
                  const Spacer(),
                  buildText(
                    'Other',
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
                'Chipping and putting green in the front yard',
                WeddingColors.sage,
                WeddingColors.tahoe,
              ),
              buildSpacer(),
              buildActivityLabel(
                'Leavenworth Golf Club',
                WeddingColors.sage,
                WeddingColors.tahoe,
              ),
              buildActivityDetails(
                <Map<String, String>>[
                  <String, String>{'text': r'9 Holes M-Th  - $30'},
                  <String, String>{'text': r'18 Holes M-Th - $40'},
                  <String, String>{'text': r'18 Holes F-Su  - $55'},
                ],
                WeddingColors.tahoe,
              ),
              buildActivityReadMore(
                'https://leavenworthgolf.com/',
                'https://goo.gl/maps/Bphb2v6qhDhxoJiBA',
                WeddingColors.tahoe,
              ),
              buildSpacer(),
              buildActivityLabel(
                'Ohme Gardens',
                WeddingColors.sage,
                WeddingColors.tahoe,
              ),
              buildActivityDetails(
                <Map<String, String>>[
                  <String, String>{'text': 'Open 9-6 every day'},
                  <String, String>{'text': r'$8 per person'},
                  <String, String>{
                    'before': '',
                    'linkText': 'Let there be a thousand blossoms bloom',
                    'after': '',
                    'link': 'https://youtu.be/_ih1EuMLspY?t=6'
                  }
                ],
                WeddingColors.tahoe,
              ),
              buildActivityReadMore(
                'https://www.ohmegardens.org/',
                'https://goo.gl/maps/6sErN4gYTC8Y4hfM8',
                WeddingColors.tahoe,
              ),
              buildSpacer(),
              buildActivityLabel(
                'Aspen Leaf Spa at Sleeping Lady Mountain Resort',
                WeddingColors.sage,
                WeddingColors.tahoe,
              ),
              buildActivityDetails(
                <Map<String, String>>[
                  <String, String>{'text': 'Mani-Pedis'},
                ],
                WeddingColors.tahoe,
              ),
              buildActivityReadMore(
                'https://www.sleepinglady.com/spa/spa-menu',
                'https://goo.gl/maps/oJ7hFsgRqKPw5Gu56',
                WeddingColors.tahoe,
              ),
              buildSpacer(),
              buildActivityLabel(
                'Studio 1890 Old Time Photos',
                WeddingColors.sage,
                WeddingColors.tahoe,
              ),
              buildActivityDetails(
                <Map<String, String>>[
                  <String, String>{'text': 'Bavarian'},
                  <String, String>{'text': 'Civil War'},
                  <String, String>{'text': 'Roaring 20s'},
                  <String, String>{'text': 'Pioneer'},
                  <String, String>{'text': 'Saloon'},
                  <String, String>{'text': 'Victorian'},
                  <String, String>{'text': 'Wild Wild West'},
                  <String, String>{'text': 'Wedding'},
                  <String, String>{
                    'before': 'Worth every ',
                    'linkText': 'penny',
                    'after': '',
                    'link': 'https://www.youtube.com/watch?v=CbhkSFzd2n4',
                  },
                ],
                WeddingColors.tahoe,
              ),
              buildActivityReadMore(
                'https://www.studio1890.com/',
                'https://goo.gl/maps/V6XsVF5uhomHaU1v8',
                WeddingColors.tahoe,
              ),
              buildSpacer(),
              buildActivityLabel(
                'Swiftwater Picnic Area',
                WeddingColors.sage,
                WeddingColors.tahoe,
              ),
              buildActivityDetails(
                <Map<String, String>>[
                  <String, String>{'text': r'$5 per day'},
                ],
                WeddingColors.tahoe,
              ),
              InkWell(
                onTap: () async {
                  final Uri boulderingUri = Uri.parse(
                      'https://www.mountainproject.com/area/106527628/swiftwater-picnic-area');
                  if (await canLaunchUrl(boulderingUri)) {
                    launchUrl(boulderingUri);
                  } else {
                    throw 'Could not launch $boulderingUri';
                  }
                },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(64, 4, 8, 0),
                  child: Row(
                    children: <Widget>[
                      buildText(
                          '\u2022 ',
                          const TextStyle(
                              color: WeddingColors.tahoe,
                              fontSize: 18,
                              fontWeight: FontWeight.w500)),
                      buildText(
                        '41 bouldering routes',
                        const TextStyle(
                          color: WeddingColors.tahoe,
                          fontSize: 18,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              buildActivityReadMore(
                'https://www.fs.usda.gov/recarea/okawen/null/recarea/?recid=59021&actid=70',
                'https://goo.gl/maps/7H68mbyMjAiyCV6K6',
                WeddingColors.tahoe,
              ),
              buildSpacer(),
              buildActivityLabel(
                'Peshastin Pinnacles State Park',
                WeddingColors.sage,
                WeddingColors.tahoe,
              ),
              buildActivityDetails(
                <Map<String, String>>[
                  <String, String>{'text': 'Great climbing!'},
                  <String, String>{
                    'text':
                        '200-foot sandstone spires of Peshastin Pinnacles with sweeping views of the Cascade Range and Wenatchee River Valley'
                  },
                  <String, String>{
                    'text': 'Beacon Rock above the lower Columbia River'
                  },
                ],
                WeddingColors.tahoe,
              ),
              buildActivityReadMore(
                'https://www.wta.org/go-hiking/hikes/peshastin-pinnacles',
                'https://goo.gl/maps/steehyd4Ti8Ghhf16',
                WeddingColors.tahoe,
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
