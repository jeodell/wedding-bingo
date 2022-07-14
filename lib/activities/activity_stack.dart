import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

Widget buildActivityStack(BuildContext context, Widget activityWidget) {
  return Scaffold(
    body: GestureDetector(
      onHorizontalDragUpdate: (DragUpdateDetails details) {
        const int sensitivity = 16;
        if (details.delta.dx > sensitivity) {
          context.router.pop();
        }
      },
      child: Stack(
        children: <Widget>[
          activityWidget,
          IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 32,
              shadows: <BoxShadow>[
                BoxShadow(
                  color: Colors.black87,
                  blurStyle: BlurStyle.outer,
                  blurRadius: 8,
                  offset: Offset(3, 3),
                ),
              ],
            ),
            onPressed: () {
              context.router.pop();
            },
          )
        ],
      ),
    ),
  );
}
