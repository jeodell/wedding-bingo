import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:wedding_bingo/activities/activities.dart';
import 'package:wedding_bingo/activities/daytrips.dart';
import 'package:wedding_bingo/activities/drinks.dart';
import 'package:wedding_bingo/activities/food.dart';
import 'package:wedding_bingo/activities/other.dart';
import 'package:wedding_bingo/activities/trails.dart';
import 'package:wedding_bingo/base.dart';
import 'package:wedding_bingo/games/games.dart';
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
          path: 'games',
          page: Games,
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
          page: EmptyRouterPage,
          children: <AutoRoute>[
            AutoRoute(
              path: '',
              page: Activities,
            ),
            AutoRoute(
              path: 'trails',
              page: Trails,
            ),
            AutoRoute(
              path: 'food',
              page: Food,
            ),
            AutoRoute(
              path: 'drinks',
              page: Drinks,
            ),
            AutoRoute(
              path: 'other',
              page: Other,
            ),
            AutoRoute(
              path: 'daytrips',
              page: DayTrips,
            ),
          ],
        ),
      ],
    ),
  ],
)
class $AppRouter {}
