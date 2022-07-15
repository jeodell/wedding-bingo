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
import 'package:flutter/material.dart' as _i13;

import '../activities/activities.dart' as _i7;
import '../activities/daytrips.dart' as _i12;
import '../activities/drinks.dart' as _i10;
import '../activities/food.dart' as _i9;
import '../activities/other.dart' as _i11;
import '../activities/trails.dart' as _i8;
import '../base.dart' as _i1;
import '../bingo/bingo.dart' as _i3;
import '../house/house.dart' as _i4;
import '../schedule/schedule.dart' as _i5;
import '../welcome/welcome.dart' as _i2;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i13.GlobalKey<_i13.NavigatorState>? navigatorKey])
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
    Food.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.Food());
    },
    Drinks.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.Drinks());
    },
    Other.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i11.Other());
    },
    DayTrips.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i12.DayTrips());
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
                _i6.RouteConfig(Food.name,
                    path: 'food', parent: EmptyRouterRoute.name),
                _i6.RouteConfig(Drinks.name,
                    path: 'drinks', parent: EmptyRouterRoute.name),
                _i6.RouteConfig(Other.name,
                    path: 'other', parent: EmptyRouterRoute.name),
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
/// [_i9.Food]
class Food extends _i6.PageRouteInfo<void> {
  const Food() : super(Food.name, path: 'food');

  static const String name = 'Food';
}

/// generated route for
/// [_i10.Drinks]
class Drinks extends _i6.PageRouteInfo<void> {
  const Drinks() : super(Drinks.name, path: 'drinks');

  static const String name = 'Drinks';
}

/// generated route for
/// [_i11.Other]
class Other extends _i6.PageRouteInfo<void> {
  const Other() : super(Other.name, path: 'other');

  static const String name = 'Other';
}

/// generated route for
/// [_i12.DayTrips]
class DayTrips extends _i6.PageRouteInfo<void> {
  const DayTrips() : super(DayTrips.name, path: 'daytrips');

  static const String name = 'DayTrips';
}
