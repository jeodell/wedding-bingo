/*
Olympic sports scoreboard - rock stacking, veggie eating contest, putting, trivia, bocce ball, pool trick shots, corn hole, HORSE, disc accuracy, hidden immunity items
When bingo square clicked, replace photo with happy photo and apply green filter
*/
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wedding_bingo/data/bingo_data.dart';
import 'package:wedding_bingo/theme/colors.dart';

class Bingo extends StatefulWidget {
  const Bingo({Key? key}) : super(key: key);

  @override
  State<Bingo> createState() => _BingoState();
}

class _BingoState extends State<Bingo> {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  late Future<String> _currentGuest;
  late List<DropdownMenuItem<String>> dropdownItems =
      <DropdownMenuItem<String>>[];
  bool _confirmGuestState = false;
  String _confirmGuestName = '';

  @override
  void initState() {
    super.initState();
    _currentGuest = _prefs.then((SharedPreferences prefs) {
      return prefs.getString('currentGuest') ?? '';
    });
  }

  Future<void> _onGuestSelection(String? value) async {
    setState(() {
      _confirmGuestState = true;
      _confirmGuestName = value!;
    });
  }

  Future<void> _confirmGuestSelection(String? value) async {
    _confirmGuestState = false;
    final SharedPreferences prefs = await _prefs;

    setState(() {
      _currentGuest =
          prefs.setString('currentGuest', value!).then((bool success) {
        return value;
      });
    });
  }

  Future<void> _denyGuestSelection() async {
    _confirmGuestState = false;
    final SharedPreferences prefs = await _prefs;

    setState(() {
      _currentGuest = prefs.setString('currentGuest', '').then((bool success) {
        return '';
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        color: WeddingColors.rain,
        child: FutureBuilder<String?>(
          future: _currentGuest,
          builder: (BuildContext context, AsyncSnapshot<String?> snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.waiting:
                return const CircularProgressIndicator();
              case ConnectionState.none:
                return const CircularProgressIndicator();
              case ConnectionState.active:
                return const CircularProgressIndicator();
              case ConnectionState.done:
                if (snapshot.data == '' && dropdownItems.isEmpty) {
                  for (final String name in BingoData.guestList) {
                    dropdownItems.add(DropdownMenuItem<String>(
                      value: name,
                      child: Text(name),
                    ));
                  }
                }
                if (_confirmGuestState == true) {
                  return Dialog(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    elevation: 4,
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 32),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          const Text('Are you sure this is you?',
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Marcellus',
                                color: Colors.black87,
                              )),
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: 24),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/images/${_confirmGuestName.toLowerCase()}.jpg',
                                width: 200,
                                height: 200,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              TextButton(
                                style: TextButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(0),
                                    ),
                                    side: const BorderSide(
                                      color: WeddingColors.maine,
                                      width: 2,
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 32,
                                      vertical: 8,
                                    ),
                                    primary: WeddingColors.maine,
                                    backgroundColor: Colors.white),
                                child: const Text('Deny'),
                                onPressed: () {
                                  _denyGuestSelection();
                                },
                              ),
                              const SizedBox(width: 16),
                              TextButton(
                                style: TextButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(0),
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 32,
                                      vertical: 8,
                                    ),
                                    primary: Colors.white,
                                    backgroundColor: WeddingColors.maine),
                                child: const Text('Confirm'),
                                onPressed: () {
                                  _confirmGuestSelection(_confirmGuestName);
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                }
                if (snapshot.data == '') {
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text(
                          'Who Are You?',
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal:
                                  MediaQuery.of(context).size.width * 0.25),
                          child: DropdownButtonFormField<String>(
                              items: dropdownItems,
                              onChanged: _onGuestSelection),
                        ),
                      ],
                    ),
                  );
                } else {
                  return Container(
                    color: WeddingColors.sage,
                    padding: const EdgeInsets.all(1),
                    child: Column(
                      children: <Widget>[
                        const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 32, vertical: 32),
                            child: Text('Wedding Bingo',
                                style: TextStyle(
                                  fontSize: 48,
                                  fontFamily: 'Marcellus',
                                  color: Colors.white,
                                ))),
                        Expanded(
                          child: SizedBox(
                            child: GridView.count(
                              crossAxisCount: 5,
                              mainAxisSpacing: 2,
                              crossAxisSpacing: 2,
                              children:
                                  List<TextButton>.generate(25, (int index) {
                                final List<Map<String, String>> conditions =
                                    BingoData.conditions;
                                final Map<String, String> currentMap =
                                    conditions.elementAt(
                                        Random().nextInt(conditions.length));
                                final String currentVictim =
                                    currentMap.keys.first;
                                final String? currentCondition =
                                    currentMap[currentVictim];
                                return TextButton(
                                  style: TextButton.styleFrom(
                                      padding: EdgeInsets.zero),
                                  onPressed: () => <Future<void>>{
                                    _denyGuestSelection(),
                                  },
                                  child: Stack(
                                    fit: StackFit.expand,
                                    children: <Widget>[
                                      Image.asset(
                                        'assets/images/$currentVictim.jpg',
                                        width: double.infinity,
                                        fit: BoxFit.cover,
                                      ),
                                      Container(
                                        padding: const EdgeInsets.fromLTRB(
                                            4, 4, 4, 0),
                                        alignment: Alignment.topCenter,
                                        color: Colors.black.withOpacity(0.4),
                                        child: Text(
                                          currentCondition!,
                                          textAlign: TextAlign.center,
                                          style: const TextStyle(
                                            color: Colors.white,
                                            shadows: <Shadow>[
                                              Shadow(
                                                offset: Offset(1, 1),
                                                blurRadius: 2,
                                              ),
                                            ],
                                            fontSize: 10,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                );
                              }),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }
            }
          },
        ),
      ),
    );
  }
}
