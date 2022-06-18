/*
Welcome to our wedding
Picture of us
Our story
Pics
*/
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Text('Home'),
    );
  }
}
