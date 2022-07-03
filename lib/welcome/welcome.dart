/*
Welcome to our wedding
Picture of us
Our story
Pics
*/
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'images/welcome.jpg',
                  ),
                  fit: BoxFit.cover),
            ),
            child: SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.fromLTRB(36, 36, 0, 0),
                  child: Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Welcome',
                          style: TextStyle(
                            color: const Color(0xff46638E),
                            fontSize: 48,
                            fontFamily: GoogleFonts.marcellus().fontFamily,
                          ),
                        ),
                        const SizedBox(height: 24),
                        const Text(
                          "We can't wait to see you at",
                          style: TextStyle(
                            color: Color(0xff46638E),
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(height: 12),
                        const Text(
                          'A Bug Wedding',
                          style: TextStyle(
                            color: Color(0xff46638E),
                            fontSize: 28,
                          ),
                        ),
                        const SizedBox(height: 36),
                        const Text(
                          'September 11-18, 2022',
                          style: TextStyle(
                            color: Color(0xff46638E),
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
