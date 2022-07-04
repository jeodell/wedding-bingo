/*
Day select
List of activites
Links
*/
import 'package:flutter/material.dart';

class Schedule extends StatelessWidget {
  const Schedule({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        color: const Color(0xffbfc9cb),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Image.asset(
                'assets/images/mountain.jpg',
              ),
              const SizedBox(height: 24),
              const Text(
                'Trip Schedule',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 48,
                  fontFamily: 'Marcellus',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
