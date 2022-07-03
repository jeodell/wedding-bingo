/*
Map of house location
Name of house
Address
Picture of house
Link to VRBO listing
*/

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class House extends StatelessWidget {
  const House({super.key});

  Widget _buildDivider(Color color) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Divider(
          color: color,
          thickness: 2,
        ),
      ),
    );
  }

  Widget _buildImageDialog(BuildContext context, String imageUrl) {
    return GestureDetector(
      onTap: () {
        Navigator.pop(context);
      },
      child: InteractiveViewer(
        child: GestureDetector(
          child: Dialog(
            child: Container(
              width: 250,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: ExactAssetImage(imageUrl), fit: BoxFit.cover),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xffA4B6B4), Color(0xffdfdacc)],
          stops: [0.5, 0.5],
        ),
      ),
      child: SingleChildScrollView(
        child: Container(
          color: const Color(0xffA4B6B4),
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            'images/map.jpg',
                          ),
                          fit: BoxFit.fill),
                    ),
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      height: MediaQuery.of(context).size.height / 1.25,
                      child: SizedBox(
                        height: 200,
                        width: MediaQuery.of(context).size.width,
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(150),
                            topRight: Radius.circular(150),
                          ),
                          child: Container(
                            color: const Color(0xffA4B6B4),
                            child: Column(
                              children: <Widget>[
                                const SizedBox(height: 36),
                                Text(
                                  'Our Stay',
                                  style: TextStyle(
                                    fontSize: 40,
                                    fontFamily:
                                        GoogleFonts.marcellus().fontFamily,
                                    color: Colors.white70,
                                  ),
                                ),
                                const SizedBox(height: 12),
                                const Text(
                                  'The Grand River Lodge',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Color(0xff46638E),
                                  ),
                                ),
                                const SizedBox(height: 12),
                                const Text(
                                  'LEAVENWORTH, WA',
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Color(0xff46638E),
                                  ),
                                ),
                                const SizedBox(height: 24),
                                const Text(
                                  'Approximately 2.5 Hours from Seattle',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xff46638E),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(36, 24, 36, 36),
                child: InkWell(
                  child: Image.asset(
                    'images/house.jpg',
                    fit: BoxFit.cover,
                  ),
                  onTap: () {
                    final Uri vrboUri = Uri.parse(
                        'https://www.vrbo.com/631085?noDates=true&unitId=1178866');
                    launchUrl(vrboUri);
                    return;
                  },
                ),
              ),
              const Text(
                'ADDRESS',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xff46638E),
                ),
              ),
              const SizedBox(height: 4),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: MediaQuery.of(context).size.width * 0.2),
                child: const Text(
                  '9515 Lone Pine Orchard Rd, Leavenworth, WA 98826',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xff46638E),
                  ),
                ),
              ),
              const SizedBox(height: 36),
              Row(
                children: <Widget>[
                  _buildDivider(Colors.white70),
                  Text(
                    'YOUR ROOM',
                    style: TextStyle(
                        color: Colors.white70,
                        fontSize: 28,
                        fontFamily: GoogleFonts.marcellus().fontFamily),
                  ),
                  _buildDivider(Colors.white70),
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 18, horizontal: 32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: const <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: Text(
                        'Main Floor',
                        style: TextStyle(
                          color: Color(0xff46638E),
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 2),
                      child: Text(
                        '\u2022 J&B: River King',
                        style: TextStyle(
                          color: Color(0xff46638E),
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 2),
                      child: Text(
                        '\u2022 Janice: The Creset',
                        style: TextStyle(
                          color: Color(0xff46638E),
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 2),
                      child: Text(
                        '\u2022 Larry & Tracy: The Plume',
                        style: TextStyle(
                          color: Color(0xff46638E),
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(0, 16, 0, 8),
                      child: Text(
                        'Upper Floor',
                        style: TextStyle(
                          color: Color(0xff46638E),
                          fontSize: 20,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 2),
                      child: Text(
                        '\u2022 Steve & Rhonda: The Grand Suite',
                        style: TextStyle(
                          color: Color(0xff46638E),
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 2),
                      child: Text(
                        "\u2022 Grandma Wilkins: Quail's Egg",
                        style: TextStyle(
                          color: Color(0xff46638E),
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 2),
                      child: Text(
                        "\u2022 Amanda & Derek: Murphey's Run",
                        style: TextStyle(
                          color: Color(0xff46638E),
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 2),
                      child: Text(
                        '\u2022 Rachel & Chris: Covey Suite',
                        style: TextStyle(
                          color: Color(0xff46638E),
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 2),
                      child: Text(
                        '\u2022 Jared, Lindsey, & Nathan: 4-bunk  ',
                        style: TextStyle(
                          color: Color(0xff46638E),
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 18),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 36, vertical: 18),
                child: GestureDetector(
                  child: Image.asset(
                    'images/mainfloor.jpg',
                    fit: BoxFit.cover,
                  ),
                  onTap: () async {
                    await showDialog(
                      context: context,
                      builder: (_) =>
                          _buildImageDialog(context, 'images/mainfloor.jpg'),
                    );
                  },
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 36, vertical: 18),
                child: GestureDetector(
                  child: Image.asset(
                    'images/upperfloor.jpg',
                    fit: BoxFit.cover,
                  ),
                  onTap: () async {
                    await showDialog(
                      context: context,
                      builder: (_) =>
                          _buildImageDialog(context, 'images/upperfloor.jpg'),
                    );
                  },
                ),
              ),
              const SizedBox(height: 18),
              Container(
                height: MediaQuery.of(context).size.height * 0.5,
                color: const Color(0xffdfdacc),
                child: Column(
                  children: [
                    Row(
                      children: <Widget>[
                        _buildDivider(const Color(0xff896759)),
                        Text(
                          'PACKING NOTES',
                          style: TextStyle(
                              color: const Color(0xff896759),
                              fontSize: 28,
                              fontFamily: GoogleFonts.marcellus().fontFamily),
                        ),
                        _buildDivider(const Color(0xff896759)),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
