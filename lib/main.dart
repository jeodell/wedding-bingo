import 'package:flutter/material.dart';
import 'package:wedding_bingo/routes/router.gr.dart';

void main() {
  runApp(const Wedding());
}

class Wedding extends StatelessWidget {
  const Wedding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AppRouter appRouter = AppRouter();

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
