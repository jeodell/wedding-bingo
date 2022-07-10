import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:wedding_bingo/activities/activities.dart';
import 'package:wedding_bingo/activities/breweries.dart';
import 'package:wedding_bingo/activities/daytrips.dart';
import 'package:wedding_bingo/activities/garden.dart';
import 'package:wedding_bingo/activities/golf.dart';
import 'package:wedding_bingo/activities/restaurants.dart';
import 'package:wedding_bingo/activities/spa.dart';
import 'package:wedding_bingo/activities/trails.dart';
import 'package:wedding_bingo/activities/wineries.dart';
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
              path: 'restaurants',
              page: Restaurants,
            ),
            AutoRoute(
              path: 'wineries',
              page: Wineries,
            ),
            AutoRoute(
              path: 'breweries',
              page: Breweries,
            ),
            AutoRoute(
              path: 'spa',
              page: Spa,
            ),
            AutoRoute(
              path: 'golf',
              page: Golf,
            ),
            AutoRoute(
              path: 'garden',
              page: Garden,
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
