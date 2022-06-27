import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:wedding_bingo/activities/activities.dart';
import 'package:wedding_bingo/base.dart';
import 'package:wedding_bingo/bingo/bingo.dart';
import 'package:wedding_bingo/house/house.dart';
import 'package:wedding_bingo/schedule/schedule.dart';
import 'package:wedding_bingo/welcome/welcome.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: '/',
      page: Home,
      children: <AutoRoute>[
        AutoRoute(
          path: 'welcome',
          page: Welcome,
        ),
        AutoRoute(
          path: 'bingo',
          page: Bingo,
        ),
        AutoRoute(
          path: 'house',
          page: House,
        ),
        AutoRoute(
          path: 'schedule',
          page: Schedule,
        ),
        AutoRoute(
          path: 'activities',
          page: Activities,
        ),
      ],
    ),
  ],
)
class $AppRouter {}
