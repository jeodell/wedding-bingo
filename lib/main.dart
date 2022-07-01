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
        primarySwatch: Colors.blueGrey,
      ),
      routerDelegate: appRouter.delegate(),
      routeInformationParser: appRouter.defaultRouteParser(),
    );
  }
}
