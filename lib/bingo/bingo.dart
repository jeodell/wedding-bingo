/*
Olympic sports scoreboard - rock stacking, veggie eating contest, putting, trivia, bocce ball, pool trick shots, corn hole, HORSE, disc accuracy, hidden immunity items
When bingo square clicked, replace photo with happy photo and apply green filter
*/
import 'dart:math';

import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wedding_bingo/data/bingo_data.dart';
import 'package:wedding_bingo/theme/colors.dart';
import 'package:wedding_bingo/widgets/widgets.dart';

class Bingo extends StatefulWidget {
  const Bingo({Key? key}) : super(key: key);

  @override
  State<Bingo> createState() => _BingoState();
}

class _BingoState extends State<Bingo> with TickerProviderStateMixin {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  late Future<String> _currentGuest;
  late List<DropdownMenuItem<String>> dropdownItems =
      <DropdownMenuItem<String>>[];
  late List<Map<String, dynamic>> squaresInfo = <Map<String, dynamic>>[];
  late ConfettiController confettiController = ConfettiController();
  bool confettiPlaying = false;
  bool _confirmGuestState = false;
  String _confirmGuestName = '';
  bool _winner = false;
  List<AnimationController> lottieControllers = <AnimationController>[];
  List<Animation<double>> fadeAnimations = <Animation<double>>[];

  @override
  void initState() {
    for (int index = 0; index < 25; index++) {
      lottieControllers.add(AnimationController(
        vsync: this,
      ));
      fadeAnimations.add(Tween<double>(begin: 1.0, end: 0.0).animate(
        CurvedAnimation(
          parent: lottieControllers[index],
          curve: Curves.easeInCubic,
        ),
      ));
    }
    confettiController.addListener(() {
      setState(() {
        confettiPlaying =
            confettiController.state == ConfettiControllerState.playing;
      });
    });
    _currentGuest = _prefs.then((SharedPreferences prefs) {
      return prefs.getString('currentGuest') ?? '';
    });
    super.initState();
  }

  @override
  void dispose() {
    for (int index = 0; index < 25; index++) {
      lottieControllers[index].dispose();
    }
    super.dispose();
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

  bool _checkForWinner() {
    int numCompletedRow = 0;
    int numCompletedCol = 0;
    int numCompletedDiagLeft = 0;
    int numCompletedDiagRight = 0;
    for (int i = 0; i < 5; i++) {
      for (int j = 0; j < 5; j++) {
        if (squaresInfo[i * 5 + j]['completed'] == true) {
          numCompletedRow++;
        }
        if (squaresInfo[i + j * 5]['completed'] == true) {
          numCompletedCol++;
        }
        if (i == j && squaresInfo[i * 5 + j]['completed'] == true) {
          numCompletedDiagLeft++;
        }
        if (i + j == 4 && squaresInfo[i * 5 + j]['completed'] == true) {
          numCompletedDiagRight++;
        }
        if (numCompletedRow == 5 ||
            numCompletedCol == 5 ||
            numCompletedDiagLeft == 5 ||
            numCompletedDiagRight == 5) {
          return true;
        }
      }
      numCompletedRow = 0;
      numCompletedCol = 0;
    }
    return false;
  }

  void _completeSquare(int index) {
    if (squaresInfo[index]['completed'] == true) {
      setState(() {
        squaresInfo[index]['completed'] = false;
        if (confettiPlaying) {
          confettiController.stop();
        }
      });
    } else {
      setState(() {
        squaresInfo[index]['completed'] = true;
        lottieControllers[index].reset();
        if (_checkForWinner()) {
          setState(() {
            _winner = true;
          });
          confettiController.play();
          print('YOU WIN!');
        }
      });
    }
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
                    dropdownItems.add(
                      DropdownMenuItem<String>(
                        value: name,
                        child: buildText(name),
                      ),
                    );
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
                          buildText('Are you sure this is you?'),
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
                                child: buildText('Deny'),
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
                                child: buildText('Confirm'),
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
                        buildText('Who Are You?'),
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
                  String currentVictim = '';
                  String currentCondition = '';

                  if (squaresInfo.isEmpty) {
                    final List<Map<String, String>> conditions =
                        BingoData.conditions;
                    final int conditionsLength = conditions.length;
                    for (int i = 0; i < 25; i++) {
                      final Map<String, String> currentMap = conditions
                          .elementAt(Random().nextInt(conditionsLength - i));
                      currentVictim = currentMap.keys.first;
                      currentCondition = currentMap[currentVictim]!;
                      squaresInfo.add(<String, dynamic>{
                        'name': currentVictim,
                        'condition': currentCondition,
                        'completed': false,
                      });
                      conditions.remove(currentMap);
                    }
                  }

                  return Container(
                    color: WeddingColors.sage,
                    padding: const EdgeInsets.all(1),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 32, vertical: 32),
                          child: buildText(
                            'Wedding Bingo',
                            const TextStyle(
                              fontSize: 48,
                              fontFamily: 'Marcellus',
                              color: Colors.white,
                            ),
                            TextAlign.center,
                          ),
                        ),
                        Expanded(
                          child: Stack(
                            alignment: Alignment.topCenter,
                            children: <Widget>[
                              SizedBox(
                                child: GridView.count(
                                  crossAxisCount: 5,
                                  mainAxisSpacing: 2,
                                  crossAxisSpacing: 2,
                                  children: List<TextButton>.generate(25,
                                      (int index) {
                                    return TextButton(
                                      style: TextButton.styleFrom(
                                          padding: EdgeInsets.zero),
                                      onPressed: () {
                                        _completeSquare(index);
                                      },
                                      child: Stack(
                                        fit: StackFit.expand,
                                        children: <Widget>[
                                          if (squaresInfo[index]['completed'] ==
                                              false)
                                            Image.asset(
                                              'assets/images/${squaresInfo[index]['name']}.jpg',
                                              width: double.infinity,
                                              fit: BoxFit.cover,
                                            )
                                          else
                                            Stack(
                                              children: <Widget>[
                                                Image.asset(
                                                  'assets/images/${squaresInfo[index]['name']}-happy.jpg',
                                                  width: double.infinity,
                                                  fit: BoxFit.cover,
                                                ),
                                                FadeTransition(
                                                  opacity:
                                                      fadeAnimations[index],
                                                  child: Lottie.asset(
                                                    'assets/json/confetti.json',
                                                    onLoaded: (LottieComposition
                                                        composition) {
                                                      lottieControllers[index]
                                                        ..duration =
                                                            composition.duration
                                                        ..forward();
                                                    },
                                                    repeat: false,
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          AnimatedContainer(
                                            duration: const Duration(
                                                milliseconds: 500),
                                            padding: const EdgeInsets.fromLTRB(
                                                4, 4, 4, 0),
                                            alignment: Alignment.bottomCenter,
                                            color: squaresInfo[index]
                                                        ['completed'] ==
                                                    true
                                                ? const Color.fromARGB(
                                                    75, 0, 171, 77)
                                                : Colors.black.withOpacity(0.4),
                                            child: buildText(
                                              squaresInfo[index]['condition']!,
                                              const TextStyle(
                                                color: Colors.white,
                                                shadows: <Shadow>[
                                                  Shadow(
                                                    offset: Offset(1, 1),
                                                    blurRadius: 2,
                                                  ),
                                                ],
                                                fontSize: 10,
                                              ),
                                              TextAlign.center,
                                            ),
                                          )
                                        ],
                                      ),
                                    );
                                  }),
                                ),
                              ),
                              if (_winner)
                                ConfettiWidget(
                                  colors: const <Color>[
                                    WeddingColors.birch,
                                    WeddingColors.maine,
                                    WeddingColors.pine,
                                    WeddingColors.sage,
                                    WeddingColors.sky,
                                    WeddingColors.tahoe,
                                    WeddingColors.terracotta,
                                  ],
                                  confettiController: confettiController,
                                  blastDirectionality:
                                      BlastDirectionality.explosive,
                                  numberOfParticles: 20,
                                  minBlastForce: 1,
                                  maxBlastForce: 10,
                                  emissionFrequency: 0.05,
                                ),
                            ],
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
