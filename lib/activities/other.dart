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
                children: const <Widget>[
                  Spacer(),
                  Text(
                    'Other',
                    style: TextStyle(
                      color: WeddingColors.tahoe,
                      fontSize: 48,
                      fontFamily: 'Marcellus',
                    ),
                  ),
                  Spacer(),
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
                <String>[
                  r'9 Holes M-Th  - $30',
                  r'18 Holes M-Th - $40',
                  r'18 Holes F-Su  - $55',
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
                <String>[
                  'Open 9-6 every day',
                  r'$8 per person',
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
                <String>[
                  'Mani-Pedi',
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
                <String>[
                  'Bavarian',
                  'Civil War',
                  'Roaring 20s',
                  'Pioneer',
                  'Saloon',
                  'Victorian',
                  'Wild Wild West',
                  'Wedding'
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
                <String>[
                  r'$5 per day',
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
                    children: const <Widget>[
                      Text('\u2022 ',
                          style: TextStyle(
                              color: WeddingColors.tahoe,
                              fontSize: 18,
                              fontWeight: FontWeight.w500)),
                      Text(
                        '41 bouldering routes',
                        style: TextStyle(
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
                <String>[
                  'Great climbing!',
                  '200-foot sandstone spires of Peshastin Pinnacles with sweeping views of the Cascade Range and Wenatchee River Valley',
                  'Beacon Rock above the lower Columbia River',
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
