import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

Widget buildActivityStack(BuildContext context, Widget activityWidget) {
  return Scaffold(
    body: Stack(
      children: <Widget>[
        activityWidget,
        IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            context.router.pop();
          },
        )
      ],
    ),
  );
}
