/*
Map of house location
Name of house
Address
Picture of house
Link to VRBO listing
*/

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class House extends StatelessWidget {
  const House({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffa4b6b4),
      body: Column(
        children: <Widget>[
          Card(
            color: Colors.transparent,
            child: Column(
              children: <Widget>[
                InkWell(
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
                const Text(
                  'The House',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'Address',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                const Text(
                  '9515 Lone Pine Orchard Rd, Leavenworth, WA 98826',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
