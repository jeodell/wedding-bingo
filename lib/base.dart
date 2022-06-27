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
    return AutoTabsScaffold(
      appBarBuilder: (_, TabsRouter tabsRouter) => AppBar(
        backgroundColor: Colors.blue,
        title: Text(tabsRouter.current.name),
        centerTitle: true,
        leading: const AutoLeadingButton(),
      ),
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
            icon: Icon(Icons.device_hub),
            label: 'Welcome',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.gamepad),
            label: 'Bingo',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'House',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.schedule),
            label: 'Schedule',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_activity),
            label: 'Activities',
          ),
        ],
      ),
    );
  }
}