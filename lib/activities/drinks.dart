import 'package:flutter/material.dart';
import 'package:wedding_bingo/activities/activity_details.dart';
import 'package:wedding_bingo/activities/activity_stack.dart';
import 'package:wedding_bingo/theme/colors.dart';
import 'package:wedding_bingo/widgets/widgets.dart';

class Drinks extends StatelessWidget {
  const Drinks({super.key});

  @override
  Widget build(BuildContext context) {
    final Widget activityWidget = Scaffold(
      body: Container(
        height: double.infinity,
        color: WeddingColors.tahoe,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image.asset(
                'assets/images/sahale.jpg',
              ),
              const SizedBox(height: 24),
              Row(
                children: const <Widget>[
                  Spacer(),
                  Text(
                    'Drinks',
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
                  'Icicle Brewing Company', WeddingColors.sky, Colors.white70),
              buildActivityDetails(<String>[
                'Beer cocktails',
                'Pints',
                'Small menu of great bar bites',
                'Downtown Leavenworth',
              ], Colors.white70),
              buildActivityReadMore('https://iciclebrewing.com/',
                  'https://g.page/iciclebrewing?share', Colors.white70),
              const SizedBox(height: 24),
              buildActivityLabel(
                  'Doghaus Brewery', WeddingColors.sky, Colors.white70),
              buildActivityDetails(<String>[
                'Nano-craft brewery with a micro-sized taproom',
                'Basement bar',
              ], Colors.white70),
              buildActivityReadMore('https://www.doghausbrewery.com/',
                  'https://goo.gl/maps/yxiYpBb7VPKsWEFx7', Colors.white70),
              const SizedBox(height: 24),
              buildActivityLabel(
                  'Blewett Brewing Company', WeddingColors.sky, Colors.white70),
              buildActivityDetails(<String>[
                'Linked with Idlewild Pizza',
              ], Colors.white70),
              buildActivityReadMore('https://www.blewettbrew.com/',
                  'https://goo.gl/maps/Q7hjXzJHFjefybEz5', Colors.white70),
              const SizedBox(height: 24),
              buildActivityLabel(
                  'Bushel and Bee Taproom', WeddingColors.sky, Colors.white70),
              buildActivityDetails(<String>[
                'Unique selection of ciders, beers, and meads',
                'Outdoor seating',
              ], Colors.white70),
              buildActivityReadMore(
                  'https://www.bushelandbee.com/',
                  'https://g.page/Bushel-and-Bee-Taproom?share',
                  Colors.white70),
              const SizedBox(height: 24),
              buildActivityLabel(
                  'Silvara Cellars', WeddingColors.sky, Colors.white70),
              buildActivityDetails(<String>[
                'Great Reviews',
                'Outdoor seating',
                '3 min from house',
                'Open 12-5 every day',
              ], Colors.white70),
              buildActivityReadMore('https://www.silvarawine.com/',
                  'https://g.page/silvarawine?share', Colors.white70),
              const SizedBox(height: 24),
              buildActivityLabel(
                  'Icicle Ridge Winery', WeddingColors.sky, Colors.white70),
              buildActivityDetails(<String>[
                'Uptown, Downtown, and Log Home locations',
              ], Colors.white70),
              buildActivityReadMore('https://icicleridgewinery.com/',
                  'https://goo.gl/maps/6fYQgR7FECZ7CnRe6', Colors.white70),
              const SizedBox(height: 24),
              buildActivityLabel('Boudreaux Cellars Tasting Room',
                  WeddingColors.sky, Colors.white70),
              buildActivityDetails(<String>[
                'Downtown location only',
              ], Colors.white70),
              buildActivityReadMore('https://www.boudreauxcellars.com/taste/',
                  'https://goo.gl/maps/vJsMFCDSfjj4kYjH7', Colors.white70),
              const SizedBox(height: 24),
              buildActivityLabel(
                  'Argonaut Coffee', WeddingColors.sky, Colors.white70),
              buildActivityDetails(<String>[
                'Coffee, pastries, biscuits, and more',
              ], Colors.white70),
              buildActivityReadMore('https://www.argocoffeeandbiscuits.com/#/',
                  'https://goo.gl/maps/YAWNhV7LVzKzaSURA', Colors.white70),
              const SizedBox(height: 24),
              buildBottomPadding(),
            ],
          ),
        ),
      ),
    );

    return buildActivityStack(context, activityWidget);
  }
}
