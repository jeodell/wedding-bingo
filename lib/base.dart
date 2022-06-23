/*
Bottom nav
*/
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:wedding_bingo/routes/router.gr.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      appBarBuilder: (_, TabsRouter tabsRouter) => AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Bottom Nav'),
        centerTitle: true,
        leading: const AutoLeadingButton(),
      ),
      backgroundColor: Colors.blue,
      routes: const <PageRouteInfo<dynamic>>[
        Landing(),
        Bingo(),
        House(),
        Schedule(),
        Activities(),
      ],
      bottomNavigationBuilder: (_, TabsRouter tabsRouter) => SalomonBottomBar(
        margin: const EdgeInsets.symmetric(
          horizontal: 5,
          vertical: 10,
        ),
        currentIndex: tabsRouter.activeIndex,
        onTap: tabsRouter.setActiveIndex,
        items: <SalomonBottomBarItem>[
          SalomonBottomBarItem(
            selectedColor: Colors.amberAccent,
            icon: const Icon(
              Icons.device_hub,
              size: 30,
              color: Colors.white,
            ),
            title: const Text('Landing'),
          ),
          SalomonBottomBarItem(
            selectedColor: Colors.amberAccent,
            icon: const Icon(
              Icons.gamepad,
              size: 30,
              color: Colors.white,
            ),
            title: const Text('Bingo'),
          ),
          SalomonBottomBarItem(
            selectedColor: Colors.amberAccent,
            icon: const Icon(
              Icons.home,
              size: 30,
              color: Colors.white,
            ),
            title: const Text('House'),
          ),
          SalomonBottomBarItem(
            selectedColor: Colors.amberAccent,
            icon: const Icon(
              Icons.schedule,
              size: 30,
              color: Colors.white,
            ),
            title: const Text('Schedule'),
          ),
          SalomonBottomBarItem(
            selectedColor: Colors.amberAccent,
            icon: const Icon(
              Icons.local_activity,
              size: 30,
              color: Colors.white,
            ),
            title: const Text('Activities'),
          ),
          SalomonBottomBarItem(
            selectedColor: Colors.amberAccent,
            icon: const Icon(
              Icons.settings,
              size: 30,
              color: Colors.white,
            ),
            title: const Text('Settings'),
          ),
        ],
      ),
    );
  }
}
