// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;

import '../activities/activities.dart' as _i6;
import '../base.dart' as _i1;
import '../bingo/bingo.dart' as _i3;
import '../house/house.dart' as _i4;
import '../welcome/welcome.dart' as _i2;
import '../schedule/schedule.dart' as _i5;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    Home.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.Home());
    },
    Welcome.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.Welcome());
    },
    Bingo.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.Bingo());
    },
    House.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.House());
    },
    Schedule.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.Schedule());
    },
    Activities.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.Activities());
    }
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(Home.name, path: '/', children: [
          _i7.RouteConfig(Welcome.name, path: 'Welcome', parent: Home.name),
          _i7.RouteConfig(Bingo.name, path: 'bingo', parent: Home.name),
          _i7.RouteConfig(House.name, path: 'house', parent: Home.name),
          _i7.RouteConfig(Schedule.name, path: 'schedule', parent: Home.name),
          _i7.RouteConfig(Activities.name,
              path: 'activities', parent: Home.name)
        ])
      ];
}

/// generated route for
/// [_i1.Home]
class Home extends _i7.PageRouteInfo<void> {
  const Home({List<_i7.PageRouteInfo>? children})
      : super(Home.name, path: '/', initialChildren: children);

  static const String name = 'Home';
}

/// generated route for
/// [_i2.Welcome]
class Welcome extends _i7.PageRouteInfo<void> {
  const Welcome() : super(Welcome.name, path: 'Welcome');

  static const String name = 'Welcome';
}

/// generated route for
/// [_i3.Bingo]
class Bingo extends _i7.PageRouteInfo<void> {
  const Bingo() : super(Bingo.name, path: 'bingo');

  static const String name = 'Bingo';
}

/// generated route for
/// [_i4.House]
class House extends _i7.PageRouteInfo<void> {
  const House() : super(House.name, path: 'house');

  static const String name = 'House';
}

/// generated route for
/// [_i5.Schedule]
class Schedule extends _i7.PageRouteInfo<void> {
  const Schedule() : super(Schedule.name, path: 'schedule');

  static const String name = 'Schedule';
}

/// generated route for
/// [_i6.Activities]
class Activities extends _i7.PageRouteInfo<void> {
  const Activities() : super(Activities.name, path: 'activities');

  static const String name = 'Activities';
}
