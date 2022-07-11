import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:wedding_bingo/activities/activity_stack.dart';

class Golf extends StatelessWidget {
  const Golf({super.key});

  @override
  Widget build(BuildContext context) {
    final Widget activityWidget =
        Center(child: Text(context.router.current.name));

    return buildActivityStack(context, activityWidget);
  }
}
