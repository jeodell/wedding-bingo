import 'package:flutter/material.dart';
import 'package:wedding_bingo/routes/router.gr.dart';

void main() {
  runApp(Wedding());
}

class Wedding extends StatelessWidget {
  Wedding({Key? key}) : super(key: key);
  final AppRouter appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Collective Bug',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: WeddingColors.secondaryColors,
        ),
        fontFamily: 'JosefinSans',
      ),
      routerDelegate: appRouter.delegate(),
      routeInformationParser: appRouter.defaultRouteParser(),
    );
  }
}

mixin WeddingColors {
  static const int primaryValue = 0xFF264436;
  static const int secondaryValue = 0xFF3D6575;

  static const MaterialColor primaryColors =
      MaterialColor(primaryValue, <int, Color>{
    50: Color(0xFFE5E9E7),
    100: Color(0xFFBEC7C3),
    200: Color(0xFF93A29B),
    300: Color(0xFF677C72),
    400: Color(0xFF476054),
    500: Color(0xFF264436),
    600: Color(0xFF223E30),
    700: Color(0xFF1C3529),
    800: Color(0xFF172D22),
    900: Color(0xFF0D1F16),
  });

  static const MaterialColor secondaryColors =
      MaterialColor(secondaryValue, <int, Color>{
    50: Color(0xFFE8EDEE),
    100: Color(0xFFC5D1D6),
    200: Color(0xFF9EB2BA),
    300: Color(0xFF77939E),
    400: Color(0xFF5A7C8A),
    500: Color(0xFF3D6575),
    600: Color(0xFF375D6D),
    700: Color(0xFF2F5362),
    800: Color(0xFF274958),
    900: Color(0xFF1A3745),
  });
}
