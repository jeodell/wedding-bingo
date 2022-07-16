/*
"Are you sure?" with picture of them
*/
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wedding_bingo/data/bingo_data.dart';

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
    return const Center(
      child: Text('Bingo page coming soon!'),
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     body: Center(
  //       child: FutureBuilder<String?>(
  //         future: _currentGuest,
  //         builder: (BuildContext context, AsyncSnapshot<String?> snapshot) {
  //           switch (snapshot.connectionState) {
  //             case ConnectionState.waiting:
  //               return const CircularProgressIndicator();
  //             case ConnectionState.none:
  //               return const CircularProgressIndicator();
  //             case ConnectionState.active:
  //               return const CircularProgressIndicator();
  //             case ConnectionState.done:
  //               if (snapshot.data == '' && dropdownItems.isEmpty) {
  //                 for (final String name in BingoData.guestList) {
  //                   dropdownItems.add(DropdownMenuItem<String>(
  //                     value: name,
  //                     child: Text(name),
  //                   ));
  //                 }
  //               }
  //               if (_confirmGuestState == true) {
  //                 return Dialog(
  //                   child: Column(
  //                     children: <Widget>[
  //                       const Text('Are you sure this is you?'),
  //                       Image.asset(
  //                         'assets/images/${_confirmGuestName.toLowerCase()}.jpg',
  //                         width: 200,
  //                         height: 200,
  //                       ),
  //                       // confirm button
  //                       Row(
  //                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //                         children: <Widget>[
  //                           ElevatedButton(
  //                             child: const Text('Confirm'),
  //                             onPressed: () {
  //                               _confirmGuestSelection(_confirmGuestName);
  //                             },
  //                           ),
  //                           ElevatedButton(
  //                             child: const Text('Deny'),
  //                             onPressed: () {
  //                               _denyGuestSelection();
  //                             },
  //                           ),
  //                         ],
  //                       ),
  //                     ],
  //                   ),
  //                 );
  //               }
  //               if (snapshot.data == '') {
  //                 return Center(
  //                   child: Column(
  //                     mainAxisAlignment: MainAxisAlignment.center,
  //                     children: <Widget>[
  //                       const Text(
  //                         'Who Are You?',
  //                       ),
  //                       Padding(
  //                         padding: EdgeInsets.symmetric(
  //                             horizontal:
  //                                 MediaQuery.of(context).size.width * 0.25),
  //                         child: DropdownButtonFormField<String>(
  //                             items: dropdownItems,
  //                             onChanged: _onGuestSelection),
  //                       ),
  //                     ],
  //                   ),
  //                 );
  //               } else {
  //                 return Padding(
  //                   padding: const EdgeInsets.all(1),
  //                   child: Column(
  //                     children: <Widget>[
  //                       Expanded(
  //                         child: SizedBox(
  //                           child: GridView.count(
  //                             crossAxisCount: 5,
  //                             mainAxisSpacing: 2,
  //                             crossAxisSpacing: 2,
  //                             children:
  //                                 List<TextButton>.generate(25, (int index) {
  //                               final List<Map<String, String>> conditions =
  //                                   BingoData.conditions;
  //                               final Map<String, String> currentMap =
  //                                   conditions.elementAt(
  //                                       Random().nextInt(conditions.length));
  //                               final String currentVictim =
  //                                   currentMap.keys.first;
  //                               final String? currentCondition =
  //                                   currentMap[currentVictim];
  //                               return TextButton(
  //                                 style: TextButton.styleFrom(
  //                                     padding: EdgeInsets.zero),
  //                                 onPressed: () => <Future<void>>{
  //                                   _denyGuestSelection(),
  //                                 },
  //                                 child: Stack(
  //                                   fit: StackFit.expand,
  //                                   children: <Widget>[
  //                                     Image.asset(
  //                                       'assets/images/$currentVictim.jpg',
  //                                       height: 250,
  //                                       width: double.infinity,
  //                                       fit: BoxFit.cover,
  //                                     ),
  //                                     Container(
  //                                       alignment: Alignment.topCenter,
  //                                       color: Colors.black.withOpacity(0.5),
  //                                       child: Text(
  //                                         currentCondition!,
  //                                         style: const TextStyle(
  //                                           color: Colors.white,
  //                                           fontSize: 10,
  //                                         ),
  //                                       ),
  //                                     )
  //                                   ],
  //                                 ),
  //                               );
  //                             }),
  //                           ),
  //                         ),
  //                       ),
  //                     ],
  //                   ),
  //                 );
  //               }
  //           }
  //         },
  //       ),
  //     ),
  //   );
  // }

}
