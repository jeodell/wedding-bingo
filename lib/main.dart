import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wedding Bingo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(title: 'Wedding Bingo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _currentGuest = '';
  List<DropdownMenuItem<dynamic>> dropdownItems = [];

  void _onGuestChanged(dynamic value) {
    setState(() {
      _currentGuest = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_currentGuest == '') {
      for (var name in guests) {
        dropdownItems.add(DropdownMenuItem(
          child: Text(name),
          value: name,
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
                DropdownButtonFormField(
                    items: dropdownItems, onChanged: _onGuestChanged),
              ],
            ))
          : Padding(
              padding: const EdgeInsets.all(1),
              child: SizedBox(
                child: GridView.count(
                  crossAxisCount: 5,
                  mainAxisSpacing: 1,
                  crossAxisSpacing: 1,
                  children: List.generate(25, (index) {
                    final currentMap = conditions
                        .elementAt(Random().nextInt(conditions.length));
                    final currentVictim = currentMap.keys.first;
                    final currentCondition = currentMap[currentVictim];
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
                  }),
                ),
              ),
            ),
    );
  }
}

const guests = [
  'Brianna',
  'Jason',
  'Jared',
  'Lindsey',
  'Nathan',
  'Rachel',
  'Chris',
  'Amanda',
  'Derek',
  'Steve',
  'Rhonda',
  'Janice',
  'Larry',
  'Tracy',
  'Mary',
];

const conditions = [
  {'steve': 'Steve says \'Nice.\''},
  {'nathan': 'Nathan does knees over toes'},
  {'nathan': 'Nathan or Jared talks about crypto or NFTs'},
  {'brianna': 'Brianna cries'},
  {'steve': 'Steve mentions Jason\'s \'Big Brain\''},
  {'steve': 'Steve ignores someone while on his phone'},
  {'steve': 'Steve says \'Nice.\''},
  {'nathan': 'Nathan does knees over toes'},
  {'nathan': 'Nathan or Jared talks about crypto or NFTs'},
  {'brianna': 'Brianna cries'},
  {'steve': 'Steve mentions Jason\'s \'Big Brain\''},
  {'steve': 'Steve ignores someone while on his phone'},
  {'steve': 'Steve says \'Nice.\''},
  {'nathan': 'Nathan does knees over toes'},
  {'nathan': 'Nathan or Jared talks about crypto or NFTs'},
  {'brianna': 'Brianna cries'},
  {'steve': 'Steve mentions Jason\'s \'Big Brain\''},
  {'steve': 'Steve ignores someone while on his phone'},
];
