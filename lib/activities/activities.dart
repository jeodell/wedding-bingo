/*
Categories
List of suggestions
*/
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:wedding_bingo/theme/colors.dart';

class Activities extends StatelessWidget {
  const Activities({super.key});

  Widget _buildActivityLink(BuildContext context, String activity) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        const Icon(
          Icons.label,
          color: WeddingColors.tahoe,
        ),
        GestureDetector(
          onTap: () => context.router
              .pushNamed(activity.replaceAll(' ', '').toLowerCase()),
          child: Container(
            margin: const EdgeInsets.all(12),
            padding: const EdgeInsets.only(bottom: 4),
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: WeddingColors.tahoe,
                ),
              ),
            ),
            child: Text(
              activity,
              style: const TextStyle(
                color: WeddingColors.tahoe,
                fontSize: 24,
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        color: WeddingColors.birch,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Image.asset(
                'assets/images/jnb.jpg',
              ),
              const SizedBox(height: 24),
              const Text(
                'Activities',
                style: TextStyle(
                  color: WeddingColors.tahoe,
                  fontSize: 48,
                  fontFamily: 'Marcellus',
                ),
              ),
              const SizedBox(height: 36),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      _buildActivityLink(context, 'Trails'),
                      _buildActivityLink(context, 'Food'),
                      _buildActivityLink(context, 'Drinks'),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      _buildActivityLink(context, 'Day Trips'),
                      _buildActivityLink(context, 'Other'),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
