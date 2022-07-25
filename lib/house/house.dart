import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:wedding_bingo/theme/colors.dart';
import 'package:wedding_bingo/widgets/widgets.dart';

class House extends StatelessWidget {
  const House({super.key});

  Widget _buildMapStack(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: WeddingColors.sage,
                width: 0,
              ),
            ),
            image: DecorationImage(
              image: AssetImage(
                'assets/images/map.jpg',
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            alignment: Alignment.bottomCenter,
            height: MediaQuery.of(context).size.height / 1.15,
            child: SizedBox(
              height: 200,
              width: MediaQuery.of(context).size.width,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(1000),
                  topRight: Radius.circular(1000),
                ),
                child: Container(
                  color: WeddingColors.sage,
                  child: Column(
                    children: <Widget>[
                      const SizedBox(height: 36),
                      buildText(
                        'Our Stay',
                        const TextStyle(
                          fontSize: 40,
                          fontFamily: 'Marcellus',
                          color: Colors.white70,
                        ),
                      ),
                      const SizedBox(height: 12),
                      buildText(
                        'The Grand River Lodge',
                        const TextStyle(
                          fontSize: 18,
                          color: WeddingColors.maine,
                        ),
                      ),
                      const SizedBox(height: 12),
                      buildText(
                        'LEAVENWORTH, WA',
                        const TextStyle(
                          fontSize: 18,
                          color: WeddingColors.maine,
                        ),
                      ),
                      const SizedBox(height: 24),
                      buildText(
                        'Approximately 2.5 Hours from Seattle',
                        const TextStyle(
                          fontSize: 14,
                          color: WeddingColors.maine,
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
    );
  }

  Widget _buildHouseImage() {
    return Container(
      padding: const EdgeInsets.fromLTRB(36, 24, 36, 36),
      child: InkWell(
        child: Image.asset(
          'assets/images/house.jpg',
          fit: BoxFit.cover,
        ),
        onTap: () async {
          final Uri vrboUri = Uri.parse(
              'https://www.vrbo.com/631085?noDates=true&unitId=1178866');
          if (await canLaunchUrl(vrboUri)) {
            launchUrl(vrboUri);
          } else {
            throw 'Could not launch $vrboUri';
          }
          return;
        },
      ),
    );
  }

  Widget _buildHouseAddress(BuildContext context) {
    return Column(
      children: <Widget>[
        buildText(
          'ADDRESS',
          const TextStyle(
            fontSize: 18,
            color: WeddingColors.maine,
          ),
        ),
        const SizedBox(height: 4),
        Padding(
          padding: EdgeInsets.symmetric(
              vertical: 8, horizontal: MediaQuery.of(context).size.width * 0.2),
          child: InkWell(
            onTap: () {
              final Uri houseUri =
                  Uri.parse('https://goo.gl/maps/qxsfkWwP2Hj8oLw77');
              launchUrl(
                houseUri,
                mode: LaunchMode.externalApplication,
              );
              return;
            },
            child: buildText(
              '9515 Lone Pine Orchard Rd, Leavenworth, WA 98826',
              const TextStyle(
                fontSize: 16,
                color: WeddingColors.maine,
                decoration: TextDecoration.underline,
              ),
              TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }

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

  Widget _buildHeaderWithDivider(String text, Color color) {
    return Row(
      children: <Widget>[
        _buildDivider(color),
        buildText(
          text,
          TextStyle(
            color: color,
            fontSize: 28,
            fontFamily: 'Marcellus',
          ),
        ),
        _buildDivider(color),
      ],
    );
  }

  Widget _buildFloorHeaders(String floorLevel) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 16, 0, 8),
      child: buildText(
        floorLevel,
        const TextStyle(
          color: WeddingColors.maine,
          fontSize: 20,
        ),
      ),
    );
  }

  Widget _buildBulletedList(List<String> listItems) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: listItems
          .map(
            (String item) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 2),
              child: buildText(
                '\u2022 $item',
                const TextStyle(
                  color: WeddingColors.maine,
                  fontSize: 18,
                ),
              ),
            ),
          )
          .toList(),
    );
  }

  Widget _buildRoomAssignments() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          _buildFloorHeaders('Main Floor'),
          _buildBulletedList(<String>[
            'J&B: River King',
            'Janice: The Crest',
            'Larry & Tracy: The Plume'
          ]),
          _buildFloorHeaders('Upper Floor'),
          _buildBulletedList(<String>[
            'Steve & Rhonda: The Grand Suite',
            "Grandma Wilkins: Quail's Egg",
            "Amanda & Derek: Murphy's Run",
            'Rachel & Chris: Covey Suite',
            'Jared, Lindsey, & Nathan: 4-bunk'
          ])
        ],
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

  Widget _buildFloorplanImages(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 18),
          child: GestureDetector(
            child: Image.asset(
              'assets/images/mainfloor.jpg',
              fit: BoxFit.cover,
            ),
            onTap: () async {
              await showDialog(
                context: context,
                builder: (_) =>
                    _buildImageDialog(context, 'assets/images/mainfloor.jpg'),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 18),
          child: GestureDetector(
            child: Image.asset(
              'assets/images/upperfloor.jpg',
              fit: BoxFit.cover,
            ),
            onTap: () async {
              await showDialog(
                context: context,
                builder: (_) =>
                    _buildImageDialog(context, 'assets/images/upperfloor.jpg'),
              );
            },
          ),
        )
      ],
    );
  }

  Widget _buildAmenities() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          _buildBulletedList(<String>[
            'Private Beach on the Wenatchee River',
            'Wrap around outdoor deck with seating & fire pit',
            'Hot tub',
            'Putting & chipping green',
            'Outdoor basketball hoop',
            'Volleyball',
            'Bocce Ball',
            'Game room with pool table, poker table, bar, keg, and giant wall Scrabble',
            'Hammock',
            'Gourmet kitchen',
            'Gas grill & smoker',
            'Theater with candy at the ready',
            'Washer & dryer',
            'Internet',
          ]),
        ],
      ),
    );
  }

  Widget _buildTemperatureRow(String label, String range) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          buildText(
            label,
            const TextStyle(
                fontSize: 20, fontWeight: FontWeight.w300, color: Colors.white),
          ),
          buildText(
            range,
            const TextStyle(
                fontSize: 24, fontWeight: FontWeight.w300, color: Colors.white),
          ),
        ],
      ),
    );
  }

  Widget _buildTemperatureBox() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 64),
      child: Container(
        color: WeddingColors.terracotta,
        child: Column(
          children: <Widget>[
            _buildTemperatureRow('HIGHS', '66-77'),
            _buildTemperatureRow('LOWS', '47-55'),
          ],
        ),
      ),
    );
  }

  Widget _buildPackingListItem(String label) {
    return Padding(
      padding: const EdgeInsets.only(top: 2),
      child: buildText(
        '\u2022 $label',
        const TextStyle(
          color: WeddingColors.mushroom,
          fontSize: 18,
          fontWeight: FontWeight.w300,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[WeddingColors.sage, WeddingColors.birch],
            stops: <double>[0.5, 0.5],
          ),
        ),
        child: SingleChildScrollView(
          child: Container(
            color: WeddingColors.sage,
            child: Column(
              children: <Widget>[
                _buildMapStack(context),
                _buildHouseImage(),
                _buildHouseAddress(context),
                const SizedBox(height: 36),
                _buildHeaderWithDivider(
                  'YOUR ROOM',
                  Colors.white70,
                ),
                _buildRoomAssignments(),
                buildSpacer(),
                _buildFloorplanImages(context),
                buildSpacer(),
                _buildHeaderWithDivider(
                  'AMENITIES',
                  Colors.white70,
                ),
                _buildAmenities(),
                const SizedBox(height: 36),
                Container(
                  color: WeddingColors.birch,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const SizedBox(height: 72),
                      _buildHeaderWithDivider(
                        'PACKING NOTES',
                        WeddingColors.mushroom,
                      ),
                      buildSpacer(),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 48),
                        alignment: Alignment.centerLeft,
                        width: 275,
                        child: buildText(
                          'Average Temperature Range in September:',
                          const TextStyle(
                              color: WeddingColors.mushroom, fontSize: 18),
                        ),
                      ),
                      buildSpacer(),
                      _buildTemperatureBox(),
                      buildSpacer(),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 48),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            buildText(
                              'Ceremony Attire:',
                              const TextStyle(
                                color: WeddingColors.mushroom,
                                fontSize: 20,
                              ),
                            ),
                            const SizedBox(height: 8),
                            buildText(
                              'Please wear Cocktail Formals attire in earthy colors',
                              const TextStyle(
                                  color: WeddingColors.mushroom,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w300),
                            ),
                            buildSpacer(),
                            buildText(
                              'Items to Pack:',
                              const TextStyle(
                                color: WeddingColors.mushroom,
                                fontSize: 20,
                              ),
                            ),
                            const SizedBox(height: 6),
                            _buildPackingListItem('Active Clothing'),
                            _buildPackingListItem('Swim Suit'),
                            _buildPackingListItem('Hiking Shoes'),
                            _buildPackingListItem('Water Shoes'),
                            buildSpacer(),
                            buildText(
                              'Color Palette:',
                              const TextStyle(
                                color: WeddingColors.mushroom,
                                fontSize: 20,
                              ),
                            ),
                            const SizedBox(height: 12),
                            Center(
                                child: Image.asset('assets/images/colors.jpg')),
                            buildBottomPadding(),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
