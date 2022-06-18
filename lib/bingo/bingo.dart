import 'dart:math';
import 'package:flutter/material.dart';
import 'package:wedding_bingo/data/data.dart';

class Bingo extends StatefulWidget {
  const Bingo({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Bingo> createState() => _BingoState();
}

class _BingoState extends State<Bingo> {
  String _currentGuest = '';
  List<DropdownMenuItem<String>> dropdownItems = <DropdownMenuItem<String>>[];

  void _onGuestChanged(dynamic value) {
    setState(() {
      _currentGuest = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_currentGuest == '') {
      for (final String name in Guests.guestList) {
        dropdownItems.add(DropdownMenuItem<String>(
          value: name,
          child: Text(name),
        ));
      }
    }
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(widget.title)),
      ),
      body: _currentGuest == ''
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'Who Are You?',
                  ),
                  DropdownButtonFormField<String>(
                      items: dropdownItems, onChanged: _onGuestChanged),
                ],
              ),
            )
          : Padding(
              padding: const EdgeInsets.all(1),
              child: SizedBox(
                child: GridView.count(
                  crossAxisCount: 5,
                  mainAxisSpacing: 1,
                  crossAxisSpacing: 1,
                  children: List<Stack>.generate(
                    25,
                    (int index) {
                      final List<Map<String, String>> conditions =
                          BingoConditions.conditions;
                      final Map<String, String> currentMap = conditions
                          .elementAt(Random().nextInt(conditions.length));
                      final String currentVictim = currentMap.keys.first;
                      final String? currentCondition =
                          currentMap[currentVictim];
                      return Stack(
                        children: <Widget>[
                          Container(
                            alignment: Alignment.center,
                            child: Image.asset(
                              'images/$currentVictim.jpg',
                              height: 250,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            alignment: Alignment.topCenter,
                            color: Colors.black.withOpacity(0.5),
                            child: Text(
                              currentCondition!,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                              ),
                            ),
                          )
                        ],
                      );
                    },
                  ),
                ),
              ),
            ),
    );
  }
}
