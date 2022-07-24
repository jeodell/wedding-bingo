/*
Welcome to our wedding
Picture of us
Our story
Pics
*/
import 'package:flutter/material.dart';
import 'package:wedding_bingo/theme/colors.dart';
import 'package:wedding_bingo/widgets/widgets.dart';

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
              children: <Widget>[
                buildText(
                  'Welcome',
                  const TextStyle(
                    color: WeddingColors.maine,
                    fontSize: 48,
                    fontFamily: 'Marcellus',
                  ),
                ),
                const SizedBox(height: 24),
                buildText(
                  "We can't wait to see you at",
                  const TextStyle(
                    color: WeddingColors.maine,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 12),
                buildText(
                  'A Bug Wedding',
                  const TextStyle(
                    color: WeddingColors.maine,
                    fontSize: 28,
                  ),
                ),
                const SizedBox(height: 36),
                buildText(
                  'September 11-18, 2022',
                  const TextStyle(
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
