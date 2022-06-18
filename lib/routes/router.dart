import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:wedding_bingo/home.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: '/',
      page: Home,
      children: <AutoRoute>[
        AutoRoute(
          path: 'bingo',
          name: 'BingoRouter',
          page: EmptyRouterPage,
          children: <AutoRoute>[],
        ),
      ],
    ),
  ],
)
class $AppRouter {}
