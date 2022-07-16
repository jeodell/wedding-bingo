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
              buildActivityLabel('Chipping and putting green in front yard',
                  WeddingColors.rain, Colors.white70),
              const SizedBox(height: 12),
              buildActivityLabel(
                  'Leavenworth Golf Club', WeddingColors.rain, Colors.white70),
              buildActivityDetails(<String>[
                r'9 Holes M-Th  - $30',
                r'18 Holes M-Th - $40',
                r'18 Holes F-Su  - $55',
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
              buildActivityDetails(<String>[
                r'60 minutes - $130',
                r'75 minutes - $160',
                r'90 minutes - $190',
              ], Colors.white70),
              buildActivityReadMore('https://www.sleepinglady.com/spa/spa-menu',
                  'https://g.page/aspen-leaf-day-spa?share', Colors.white70),
              const SizedBox(height: 24),
              buildActivityLabel('Studio 1890 Old Time Photos',
                  WeddingColors.rain, Colors.white70),
              buildActivityDetails(<String>[
                'Bavarian',
                'Civil War',
                'Roaring 20s',
                'Pioneer',
                'Saloon',
                'Victorian',
                'Wild Wild West',
                'Wedding'
              ], Colors.white70),
              buildActivityReadMore('https://www.studio1890.com/',
                  'https://goo.gl/maps/V6XsVF5uhomHaU1v8', Colors.white70),
              const SizedBox(height: 24),
              buildActivityLabel(
                  'Swiftwater Picnic Area', WeddingColors.rain, Colors.white70),
              buildActivityDetails(<String>[
                r'$5 per day',
              ], Colors.white70),
              InkWell(
                onTap: () {
                  final Uri boulderingUri = Uri.parse(
                      'https://www.mountainproject.com/area/106527628/swiftwater-picnic-area');
                  launchUrl(boulderingUri);
                },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(64, 4, 8, 0),
                  child: Row(
                    children: const <Widget>[
                      Text('\u2022 ',
                          style: TextStyle(
                              color: Colors.white70,
                              fontSize: 18,
                              fontWeight: FontWeight.w500)),
                      Text(
                        '41 bouldering routes',
                        style: TextStyle(
                          color: Colors.white70,
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
                  Colors.white70),
              const SizedBox(height: 24),
              buildActivityLabel('Peshastin Pinnacles State Park',
                  WeddingColors.rain, Colors.white70),
              buildActivityDetails(<String>[
                'Great climbing!',
                '200-foot sandstone spires of Peshastin Pinnacles with sweeping views of the Cascade Range and Wenatchee River Valley',
                'Beacon Rock above the lower Columbia River',
              ], Colors.white70),
              buildActivityReadMore(
                  'https://www.wta.org/go-hiking/hikes/peshastin-pinnacles',
                  'https://goo.gl/maps/steehyd4Ti8Ghhf16',
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
