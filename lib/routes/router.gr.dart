// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;

import '../activities/activities.dart' as _i6;
import '../bingo/bingo.dart' as _i3;
import '../home.dart' as _i1;
import '../house/house.dart' as _i4;
import '../landing/landing.dart' as _i2;
import '../schedule/schedule.dart' as _i5;
import '../settings.dart' as _i7;

class AppRouter extends _i8.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    Home.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.Home());
    },
    Landing.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.Landing());
    },
    Bingo.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.Bingo());
    },
    House.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.House());
    },
    Schedule.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.Schedule());
    },
    Activities.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.Activities());
    },
    Settings.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.Settings());
    }
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(Home.name, path: '/', children: [
          _i8.RouteConfig(Landing.name, path: 'landing', parent: Home.name),
          _i8.RouteConfig(Bingo.name, path: 'bingo', parent: Home.name),
          _i8.RouteConfig(House.name, path: 'house', parent: Home.name),
          _i8.RouteConfig(Schedule.name, path: 'schedule', parent: Home.name),
          _i8.RouteConfig(Activities.name,
              path: 'activities', parent: Home.name),
          _i8.RouteConfig(Settings.name, path: 'settings', parent: Home.name)
        ])
      ];
}

/// generated route for
/// [_i1.Home]
class Home extends _i8.PageRouteInfo<void> {
  const Home({List<_i8.PageRouteInfo>? children})
      : super(Home.name, path: '/', initialChildren: children);

  static const String name = 'Home';
}

/// generated route for
/// [_i2.Landing]
class Landing extends _i8.PageRouteInfo<void> {
  const Landing() : super(Landing.name, path: 'landing');

  static const String name = 'Landing';
}

/// generated route for
/// [_i3.Bingo]
class Bingo extends _i8.PageRouteInfo<void> {
  const Bingo() : super(Bingo.name, path: 'bingo');

  static const String name = 'Bingo';
}

/// generated route for
/// [_i4.House]
class House extends _i8.PageRouteInfo<void> {
  const House() : super(House.name, path: 'house');

  static const String name = 'House';
}

/// generated route for
/// [_i5.Schedule]
class Schedule extends _i8.PageRouteInfo<void> {
  const Schedule() : super(Schedule.name, path: 'schedule');

  static const String name = 'Schedule';
}

/// generated route for
/// [_i6.Activities]
class Activities extends _i8.PageRouteInfo<void> {
  const Activities() : super(Activities.name, path: 'activities');

  static const String name = 'Activities';
}

/// generated route for
/// [_i7.Settings]
class Settings extends _i8.PageRouteInfo<void> {
  const Settings() : super(Settings.name, path: 'settings');

  static const String name = 'Settings';
}
