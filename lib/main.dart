import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
          primarySwatch: Colors.blueGrey,
        ).copyWith(
          secondary: Colors.redAccent,
        ),
        textTheme: TextTheme(
          headline1: GoogleFonts.marcellus(),
          headline2: GoogleFonts.marcellus(),
          headline3: GoogleFonts.marcellus(),
          headline4: GoogleFonts.marcellus(),
          headline5: GoogleFonts.marcellus(),
          headline6: GoogleFonts.marcellus(),
          subtitle1: GoogleFonts.josefinSans(),
          subtitle2: GoogleFonts.josefinSans(),
          bodyText1: GoogleFonts.josefinSans(),
          bodyText2: GoogleFonts.josefinSans(),
          button: GoogleFonts.josefinSans(),
          caption: GoogleFonts.josefinSans(),
          overline: GoogleFonts.josefinSans(),
        ),
      ),
      routerDelegate: appRouter.delegate(),
      routeInformationParser: appRouter.defaultRouteParser(),
    );
  }
}
