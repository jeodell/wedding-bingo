/*
Welcome to our wedding
Picture of us
Our story
Pics
*/
import 'package:flutter/material.dart';
import 'package:wedding_bingo/theme/colors.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/images/welcome.jpg',
              ),
              fit: BoxFit.cover),
        ),
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.fromLTRB(36, 36, 0, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                Text(
                  'Welcome',
                  style: TextStyle(
                    color: WeddingColors.maine,
                    fontSize: 48,
                    fontFamily: 'Marcellus',
                  ),
                ),
                SizedBox(height: 24),
                Text(
                  "We can't wait to see you at",
                  style: TextStyle(
                    color: WeddingColors.maine,
                    fontSize: 14,
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  'A Bug Wedding',
                  style: TextStyle(
                    color: WeddingColors.maine,
                    fontSize: 28,
                  ),
                ),
                SizedBox(height: 36),
                Text(
                  'September 11-18, 2022',
                  style: TextStyle(
                    color: WeddingColors.maine,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
