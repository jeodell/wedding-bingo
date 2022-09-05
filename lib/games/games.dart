import 'dart:convert';
import 'dart:math';

import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wedding_bingo/data/bingo_data.dart';
import 'package:wedding_bingo/data/quiz_data.dart';
import 'package:wedding_bingo/theme/colors.dart';
import 'package:wedding_bingo/widgets/widgets.dart';

class Games extends StatefulWidget {
  const Games({Key? key}) : super(key: key);

  @override
  State<Games> createState() => _GamesState();
}

class _GamesState extends State<Games> with TickerProviderStateMixin {
  // Bingo
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  late Future<String> _currentGuest;
  late List<DropdownMenuItem<String>> dropdownItems =
      <DropdownMenuItem<String>>[];
  Map<String, int> numSquaresPerGuest = <String, int>{};
  bool confettiPlaying = false;
  bool _confirmGuestState = false;
  String _confirmGuestName = '';
  String _currentVictim = '';
  String _currentCondition = '';
  bool _winner = false;
  late List<Map<String, dynamic>> squaresInfo = <Map<String, dynamic>>[];
  late ConfettiController confettiController = ConfettiController();
  List<AnimationController> lottieControllers = <AnimationController>[];
  List<Animation<double>> fadeAnimations = <Animation<double>>[];

  List<Icon> _scoreTracker = <Icon>[];
  int _questionIndex = 0;
  int _totalScore = 0;
  bool answerWasSelected = false;
  int answerSelectedIndex = 0;
  bool lastQuestion = false;
  bool endOfQuiz = false;
  bool correctAnswerSelected = false;

  // Quiz

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
    _fetchBingoBoard();
    super.initState();
  }

  @override
  void dispose() {
    for (int index = 0; index < 25; index++) {
      lottieControllers[index].dispose();
    }
    super.dispose();
  }

  Future<void> _fetchBingoBoard() async {
    for (int index = 0; index < 25; index++) {
      final String currentSquareInfo =
          await _prefs.then((SharedPreferences prefs) {
        return prefs.getString('square$index') ?? '';
      });
      if (currentSquareInfo != '') {
        squaresInfo.add(json.decode(currentSquareInfo));
      }
    }
  }

  Future<void> _createBingoBoard() async {
    final Map<String, int> numPhotos = BingoData.numPhotos;
    if (squaresInfo.isEmpty) {
      int maxSquares = 0;
      final String currentGuest =
          await _currentGuest.then((String currentGuest) {
        return currentGuest.toLowerCase();
      });
      numSquaresPerGuest.remove(currentGuest);
      final List<Map<String, String>> conditions = BingoData.conditions;
      conditions.removeWhere(
          (Map<String, String> element) => element['name'] == currentGuest);
      final int conditionsLength = conditions.length;
      for (int i = 0; i < 25; i++) {
        Map<String, String> currentMap =
            conditions.elementAt(Random().nextInt(conditionsLength - i));
        final bool allNumSquaresEqual = numSquaresPerGuest.values
            .every((int element) => element == maxSquares);
        if (!allNumSquaresEqual) {
          while (numSquaresPerGuest[currentMap['name']]! >= maxSquares) {
            currentMap =
                conditions.elementAt(Random().nextInt(conditionsLength - i));
          }
        }
        numSquaresPerGuest[currentMap['name']!] =
            numSquaresPerGuest[currentMap['name']!]! + 1;
        if (numSquaresPerGuest[currentMap['name']]! > maxSquares) {
          maxSquares = numSquaresPerGuest[currentMap['name']]!;
        }
        _currentVictim = currentMap['name']!;
        _currentCondition = currentMap['condition']!;
        final int numPhotosForName = numPhotos[_currentVictim]!;
        final int imageIndex = Random().nextInt(numPhotosForName);
        squaresInfo.add(<String, dynamic>{
          'name': _currentVictim,
          'condition': _currentCondition,
          'imageIndex': imageIndex,
          'completed': false,
        });
        _prefs.then((SharedPreferences prefs) {
          prefs.setString('square$i', json.encode(squaresInfo[i]));
        });
        conditions.remove(currentMap);
      }
    }
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
      _createBingoBoard();
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
        _prefs.then((SharedPreferences prefs) {
          final String encodedString = json.encode(squaresInfo[index]);
          prefs.setString('square$index', encodedString);
        });
        if (confettiPlaying) {
          confettiController.stop();
        }
      });
    } else {
      setState(() {
        squaresInfo[index]['completed'] = true;
        _prefs.then((SharedPreferences prefs) {
          final String encodedString = json.encode(squaresInfo[index]);
          prefs.setString('square$index', encodedString);
        });
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

  void _zoomSquare(int index) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          final String name = squaresInfo[index]['name'];
          final String condition = squaresInfo[index]['condition'];
          final int imageIndex = squaresInfo[index]['imageIndex'];
          return Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            elevation: 4,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 24),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        'assets/images/$name$imageIndex.jpg',
                        width: MediaQuery.of(context).size.width * 0.6,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(32, 0, 32, 16),
                    child: buildText(condition, const TextStyle(fontSize: 18)),
                  ),
                ],
              ),
            ),
          );
        });
  }

  Widget _buildBingo() {
    return Container(
      color: WeddingColors.sage,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
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
            Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                SizedBox(
                  height: MediaQuery.of(context).size.width,
                  child: GridView.count(
                    crossAxisCount: 5,
                    mainAxisSpacing: 2,
                    crossAxisSpacing: 2,
                    children: List<TextButton>.generate(25, (int index) {
                      final String currentName = squaresInfo[index]['name']!;
                      final int currentImageIndex =
                          squaresInfo[index]['imageIndex']!;
                      return TextButton(
                        style: TextButton.styleFrom(padding: EdgeInsets.zero),
                        onPressed: () {
                          _completeSquare(index);
                        },
                        onLongPress: () {
                          _zoomSquare(index);
                        },
                        child: Stack(
                          fit: StackFit.expand,
                          children: <Widget>[
                            if (squaresInfo[index]['completed'] == false)
                              Image.asset(
                                'assets/images/$currentName$currentImageIndex.jpg',
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
                                    opacity: fadeAnimations[index],
                                    child: Lottie.asset(
                                      'assets/json/confetti.json',
                                      onLoaded:
                                          (LottieComposition composition) {
                                        lottieControllers[index]
                                          ..duration = composition.duration
                                          ..forward();
                                      },
                                      repeat: false,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ],
                              ),
                            AnimatedContainer(
                              duration: const Duration(milliseconds: 500),
                              padding: const EdgeInsets.fromLTRB(4, 4, 4, 0),
                              alignment: Alignment.bottomCenter,
                              color: squaresInfo[index]['completed'] == true
                                  ? const Color.fromARGB(75, 0, 171, 77)
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
                    blastDirectionality: BlastDirectionality.explosive,
                    numberOfParticles: 20,
                    minBlastForce: 1,
                    maxBlastForce: 10,
                    emissionFrequency: 0.05,
                  ),
              ],
            ),
            const SizedBox(height: 36),
            const Text(
              'Rules/Info',
              style: TextStyle(
                  fontSize: 48, fontFamily: 'Marcellus', color: Colors.white),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: buildText(
                      '\u2022 Bingo will be played on the honor system. The prize is cool but not cool enough to lie for.',
                      const TextStyle(
                        fontSize: 16,
                        fontFamily: 'Josefin Sans',
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: buildText(
                      '\u2022 Players cannot purposefully influence others to perform their -isms',
                      const TextStyle(
                        fontSize: 16,
                        fontFamily: 'Josefin Sans',
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: buildText(
                      '\u2022 Players must be able to account for when and where their wining -isms occurred',
                      const TextStyle(
                        fontSize: 16,
                        fontFamily: 'Josefin Sans',
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: buildText(
                      '\u2022 If you get Bingo, let J or B know and they will review your board and determine if you have won',
                      const TextStyle(
                        fontSize: 16,
                        fontFamily: 'Josefin Sans',
                        color: Colors.white,
                      ),
                    ),
                  ),
                  buildBottomPadding(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAnswer(List<Map<String, dynamic>> quiz,
      Map<String, dynamic> answer, Color? textColor, Color? backgroundColor) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 4),
      child: InkWell(
        onTap: () {
          if (answerWasSelected) {
            return;
          }
          _questionAnswered(quiz, answer);
        },
        child: Container(
          padding: const EdgeInsets.all(16),
          width: double.infinity,
          decoration: BoxDecoration(
            color: backgroundColor,
            border: Border.all(color: WeddingColors.pine),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            answer['answerText'],
            style: TextStyle(
              fontSize: 16,
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }

  void _questionAnswered(
      List<Map<String, dynamic>> quiz, Map<String, dynamic> answer) {
    setState(
      () {
        answerWasSelected = true;
        final List<Map<String, dynamic>> answers =
            quiz[_questionIndex]['answers'];
        for (int i = 0; i < answers.length; i++) {
          if (answers[i]['answerText'] == answer['answerText']) {
            answerSelectedIndex = i;
            break;
          }
        }
        if (answer['isCorrect']) {
          _totalScore++;
          correctAnswerSelected = true;
        }
        _scoreTracker.add(
          answer['isCorrect']
              ? const Icon(
                  Icons.check_circle,
                  color: WeddingColors.pine,
                )
              : Icon(
                  Icons.clear,
                  color: Colors.red[900],
                ),
        );
      },
    );
  }

  void _nextQuestion(List<Map<String, dynamic>> quiz) {
    setState(() {
      _questionIndex++;
      answerWasSelected = false;
      correctAnswerSelected = false;
    });
    if (_questionIndex + 1 == quiz.length) {
      lastQuestion = true;
    }
    if (_questionIndex == quiz.length) {
      endOfQuiz = true;
    }
  }

  void _restartQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
      _scoreTracker = <Icon>[];
      endOfQuiz = false;
      lastQuestion = false;
    });
  }

  Widget _buildNextButton(List<Map<String, dynamic>> quiz) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: WeddingColors.pine,
          minimumSize: const Size(double.infinity, 40),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        onPressed: () {
          if (!endOfQuiz && !answerWasSelected) {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text(
                  'Please select an answer before going to the next question'),
            ));
            return;
          }
          _nextQuestion(quiz);
        },
        child: Text(lastQuestion ? 'Finish Quiz' : 'Next Question'),
      ),
    );
  }

  Widget _buildRestartButton(List<Map<String, dynamic>> quiz) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: WeddingColors.pine,
          minimumSize: const Size(double.infinity, 40),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        onPressed: () {
          _restartQuiz();
        },
        child: const Text('Restart Quiz'),
      ),
    );
  }

  Widget _buildQuiz() {
    final List<Map<String, dynamic>> quiz = QuizData.quiz;

    return Container(
      color: WeddingColors.sage,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(32, 32, 32, 12),
              child: buildText(
                'So you think you know the bugs...?',
                const TextStyle(
                  fontSize: 36,
                  fontFamily: 'Marcellus',
                  color: Colors.white,
                ),
                TextAlign.center,
              ),
            ),
            if (endOfQuiz) ...<Widget>[
              const SizedBox(height: 24),
              Container(
                width: double.infinity,
                height: 130,
                margin: const EdgeInsets.only(bottom: 10, left: 30, right: 30),
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                decoration: BoxDecoration(
                  color: WeddingColors.pine,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Text(
                    'Your final score is $_totalScore/${quiz.length}',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              _buildRestartButton(quiz),
            ] else ...<Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  if (_scoreTracker.isEmpty)
                    const SizedBox(
                      height: 24,
                    ),
                  if (_scoreTracker.isNotEmpty) ..._scoreTracker
                ],
              ),
              Container(
                width: double.infinity,
                height: 130,
                margin: const EdgeInsets.only(
                    bottom: 10.0, left: 30.0, right: 30.0),
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                decoration: BoxDecoration(
                  color: WeddingColors.pine,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      quiz[_questionIndex]['question'],
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Question ${_questionIndex + 1} of ${quiz.length}',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              ...(quiz[_questionIndex]['answers'] as List<Map<String, Object>>)
                  .map(
                (Map<String, dynamic> answer) => _buildAnswer(
                  quiz,
                  answer,
                  answerWasSelected
                      ? answer['isCorrect'] == true
                          ? Colors.white
                          : answer ==
                                  quiz[_questionIndex]['answers']
                                      [answerSelectedIndex]
                              ? Colors.white
                              : null
                      : null,
                  answerWasSelected
                      ? answer['isCorrect'] == true
                          ? WeddingColors.pine
                          : answer ==
                                  quiz[_questionIndex]['answers']
                                      [answerSelectedIndex]
                              ? Colors.red[900]
                              : Colors.white.withOpacity(0.75)
                      : Colors.white.withOpacity(0.75),
                ),
              ),
              const SizedBox(height: 20),
              _buildNextButton(quiz),
            ],
          ],
        ),
      ),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return const Center(child: Text('Bingo page coming soon!'));
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        color: WeddingColors.sage,
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
                    numSquaresPerGuest[name.toLowerCase()] = 0;
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
                                'assets/images/${_confirmGuestName.toLowerCase()}0.jpg',
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
                                      color: WeddingColors.pine,
                                      width: 2,
                                    ),
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 32,
                                      vertical: 8,
                                    ),
                                    primary: WeddingColors.pine,
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
                    child: SingleChildScrollView(
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
                    ),
                  );
                } else {
                  return DefaultTabController(
                    length: 2,
                    child: Scaffold(
                      appBar: AppBar(
                        title: const TabBar(
                          tabs: <Tab>[
                            Tab(
                              child: Text(
                                'Bingo',
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                            Tab(
                              child: Text(
                                'Quiz',
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                          ],
                        ),
                      ),
                      body: TabBarView(
                        children: <Widget>[
                          _buildBingo(),
                          _buildQuiz(),
                        ],
                      ),
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
