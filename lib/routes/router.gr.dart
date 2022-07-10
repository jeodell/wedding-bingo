// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i16;

import '../activities/activities.dart' as _i7;
import '../activities/breweries.dart' as _i11;
import '../activities/daytrips.dart' as _i15;
import '../activities/garden.dart' as _i14;
import '../activities/golf.dart' as _i13;
import '../activities/restaurants.dart' as _i9;
import '../activities/spa.dart' as _i12;
import '../activities/trails.dart' as _i8;
import '../activities/wineries.dart' as _i10;
import '../base.dart' as _i1;
import '../bingo/bingo.dart' as _i3;
import '../house/house.dart' as _i4;
import '../schedule/schedule.dart' as _i5;
import '../welcome/welcome.dart' as _i2;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i16.GlobalKey<_i16.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    Home.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.Home());
    },
    Welcome.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.Welcome());
    },
    Bingo.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.Bingo());
    },
    House.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.House());
    },
    Schedule.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.Schedule());
    },
    EmptyRouterRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.EmptyRouterPage());
    },
    Activities.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.Activities());
    },
    Trails.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.Trails());
    },
    Restaurants.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.Restaurants());
    },
    Wineries.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.Wineries());
    },
    Breweries.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i11.Breweries());
    },
    Spa.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i12.Spa());
    },
    Golf.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i13.Golf());
    },
    Garden.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i14.Garden());
    },
    DayTrips.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i15.DayTrips());
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(Home.name, path: '/', children: [
          _i6.RouteConfig(Welcome.name, path: 'welcome', parent: Home.name),
          _i6.RouteConfig(Bingo.name, path: 'bingo', parent: Home.name),
          _i6.RouteConfig(House.name, path: 'house', parent: Home.name),
          _i6.RouteConfig(Schedule.name, path: 'schedule', parent: Home.name),
          _i6.RouteConfig(EmptyRouterRoute.name,
              path: 'activities',
              parent: Home.name,
              children: [
                _i6.RouteConfig(Activities.name,
                    path: '', parent: EmptyRouterRoute.name),
                _i6.RouteConfig(Trails.name,
                    path: 'trails', parent: EmptyRouterRoute.name),
                _i6.RouteConfig(Restaurants.name,
                    path: 'restaurants', parent: EmptyRouterRoute.name),
                _i6.RouteConfig(Wineries.name,
                    path: 'wineries', parent: EmptyRouterRoute.name),
                _i6.RouteConfig(Breweries.name,
                    path: 'breweries', parent: EmptyRouterRoute.name),
                _i6.RouteConfig(Spa.name,
                    path: 'spa', parent: EmptyRouterRoute.name),
                _i6.RouteConfig(Golf.name,
                    path: 'golf', parent: EmptyRouterRoute.name),
                _i6.RouteConfig(Garden.name,
                    path: 'garden', parent: EmptyRouterRoute.name),
                _i6.RouteConfig(DayTrips.name,
                    path: 'daytrips', parent: EmptyRouterRoute.name)
              ])
        ])
      ];
}

/// generated route for
/// [_i1.Home]
class Home extends _i6.PageRouteInfo<void> {
  const Home({List<_i6.PageRouteInfo>? children})
      : super(Home.name, path: '/', initialChildren: children);

  static const String name = 'Home';
}

/// generated route for
/// [_i2.Welcome]
class Welcome extends _i6.PageRouteInfo<void> {
  const Welcome() : super(Welcome.name, path: 'welcome');

  static const String name = 'Welcome';
}

/// generated route for
/// [_i3.Bingo]
class Bingo extends _i6.PageRouteInfo<void> {
  const Bingo() : super(Bingo.name, path: 'bingo');

  static const String name = 'Bingo';
}

/// generated route for
/// [_i4.House]
class House extends _i6.PageRouteInfo<void> {
  const House() : super(House.name, path: 'house');

  static const String name = 'House';
}

/// generated route for
/// [_i5.Schedule]
class Schedule extends _i6.PageRouteInfo<void> {
  const Schedule() : super(Schedule.name, path: 'schedule');

  static const String name = 'Schedule';
}

/// generated route for
/// [_i6.EmptyRouterPage]
class EmptyRouterRoute extends _i6.PageRouteInfo<void> {
  const EmptyRouterRoute({List<_i6.PageRouteInfo>? children})
      : super(EmptyRouterRoute.name,
            path: 'activities', initialChildren: children);

  static const String name = 'EmptyRouterRoute';
}

/// generated route for
/// [_i7.Activities]
class Activities extends _i6.PageRouteInfo<void> {
  const Activities() : super(Activities.name, path: '');

  static const String name = 'Activities';
}

/// generated route for
/// [_i8.Trails]
class Trails extends _i6.PageRouteInfo<void> {
  const Trails() : super(Trails.name, path: 'trails');

  static const String name = 'Trails';
}

/// generated route for
/// [_i9.Restaurants]
class Restaurants extends _i6.PageRouteInfo<void> {
  const Restaurants() : super(Restaurants.name, path: 'restaurants');

  static const String name = 'Restaurants';
}

/// generated route for
/// [_i10.Wineries]
class Wineries extends _i6.PageRouteInfo<void> {
  const Wineries() : super(Wineries.name, path: 'wineries');

  static const String name = 'Wineries';
}

/// generated route for
/// [_i11.Breweries]
class Breweries extends _i6.PageRouteInfo<void> {
  const Breweries() : super(Breweries.name, path: 'breweries');

  static const String name = 'Breweries';
}

/// generated route for
/// [_i12.Spa]
class Spa extends _i6.PageRouteInfo<void> {
  const Spa() : super(Spa.name, path: 'spa');

  static const String name = 'Spa';
}

/// generated route for
/// [_i13.Golf]
class Golf extends _i6.PageRouteInfo<void> {
  const Golf() : super(Golf.name, path: 'golf');

  static const String name = 'Golf';
}

/// generated route for
/// [_i14.Garden]
class Garden extends _i6.PageRouteInfo<void> {
  const Garden() : super(Garden.name, path: 'garden');

  static const String name = 'Garden';
}

/// generated route for
/// [_i15.DayTrips]
class DayTrips extends _i6.PageRouteInfo<void> {
  const DayTrips() : super(DayTrips.name, path: 'daytrips');

  static const String name = 'DayTrips';
}
