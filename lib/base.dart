/*
Bottom nav
*/
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:wedding_bingo/routes/router.gr.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map<String, Color> titleToColor = <String, Color>{
      'Welcome': const Color(0xff46638E),
      'Bingo': const Color(0xff8BA5C3),
      'House': const Color(0xff3D6575),
      'Schedule': const Color(0xff264436),
      'Activities': const Color(0xffA4B6B4),
    };

    return SafeArea(
      child: AutoTabsScaffold(
        routes: const <PageRouteInfo<dynamic>>[
          Welcome(),
          Bingo(),
          House(),
          Schedule(),
          Activities(),
        ],
        bottomNavigationBuilder: (_, TabsRouter tabsRouter) =>
            BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.forest),
              label: 'Welcome',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.grid_on),
              label: 'Bingo',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'House',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month),
              label: 'Schedule',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_activity),
              label: 'Activities',
            ),
          ],
        ),
      ),
    );
  }
}
