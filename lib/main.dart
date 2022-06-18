import 'package:flutter/material.dart';
import 'package:wedding_bingo/bingo/bingo.dart';

void main() {
  runApp(const Wedding());
}

class Wedding extends StatelessWidget {
  const Wedding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wedding Bingo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const Bingo(title: 'Wedding Bingo'),
    );
  }
}
