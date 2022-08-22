mixin BingoData {
  static final List<String> guestList = <String>[
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
  ];

  static final List<Map<String, String>> conditions = <Map<String, String>>[
    // Steve
    <String, String>{'steve': "Steve says 'Nice.'"},
    <String, String>{'steve': "Steve mentions Jason's 'Big Brain'"},
    <String, String>{'steve': 'Steve ignores someone while on his phone'},
    <String, String>{'steve': 'Steve refuses vegetables'},
    // Nathan
    <String, String>{'nathan': 'Nathan does knees over toes'},
    <String, String>{'nathan': 'Nathan talks about crypto or NFTs'},
    <String, String>{'nathan': 'Nathan says his catchphrase - "Zip Zap Zop"'},
    <String, String>{'nathan': 'Nathan is goaded into doing the splits'},
    <String, String>{
      'nathan': 'Nathan makes a joke about sloppy steaks on steak night'
    },
    // Jason
    <String, String>{'jason': 'Jason has late night chocolate snack'},
    // Brianna
    <String, String>{'brianna': 'Brianna cries'},
    <String, String>{'brianna': 'Brianna falls off her electric bike'},
    // Jared
    <String, String>{'jared': 'Jared hug squeezes or bounce hugs someone'},
    <String, String>{'jared': 'Jared complains about old person pains'},
    <String, String>{'jared': 'Jared picks at the skin on his hands'},
    <String, String>{
      'jared':
          'Jared says his catchphrase - "You\'re pretty good for someone without a tank top'
    },
    // Lindsey
    <String, String>{'lindsey': "Lindsey finds a bug in J's app"},
    <String, String>{'lindsey': 'Lindsey boxes Jared'},
    <String, String>{'lindsey': 'Lindsey starts beating up on Nathan'},
    <String, String>{'lindsey': 'Lindsey sneezes more than twice in a row'},
    // Rhonda
    <String, String>{'rhonda': 'Rhonda looks for her glasses'},
    <String, String>{'rhonda': 'Rhonda plays non-bingo games on her phone'},
    <String, String>{'rhonda': 'Rhonda stops to take pictures of wildflowers'},
    // Rachel
    <String, String>{'rachel': 'Rachel has a breakfast beer'},
    <String, String>{'rachel': 'Rachel has a salad for breakfast'},
    <String, String>{'rachel': 'Rachel plays punk music'},
    <String, String>{'rachel': 'Rachel says "Umm" in a high pitch'},
    // Chris
    <String, String>{'chris': 'Chris asks Rhonda if she wants a diet coke'},
    <String, String>{'chris': 'Chris wears something with a spider on it'},
    <String, String>{'chris': 'Chris sneezes absurdly'},
    <String, String>{'chris': 'Chris says "Well you know what, Haferman..."'},
    // Amanda
    <String, String>{'amanda': 'Amanda talks about missing Porter'},
    <String, String>{'amanda': 'Amanda winks while poking fun at someone'},
    // Derek
    <String, String>{'derek': 'Derek makes an obscure movie/tv reference'},
    <String, String>{'derek': 'Derek asks to toss the disk'},
    <String, String>{'derek': 'Derek wears a metal band shirt'},
    // Janice
    <String, String>{'janice': 'Janice says something about Costco'},
    // Larry
    <String, String>{'larry': 'Larry twirls his eyeglass arm in his ear'},
    <String, String>{'larry': 'Larry references something he saw on Facebook'},
    <String, String>{'larry': 'Larry plays bartender'},
  ];

  static final Map<String, int> numPhotos = <String, int>{
    'jason': 1,
    'brianna': 1,
    'nathan': 1,
    'jared': 1,
    'lindsey': 1,
    'rachel': 1,
    'chris': 1,
    'steve': 1,
    'rhonda': 1,
    'larry': 1,
    'janice': 1,
    'amanda': 1,
    'derek': 1,
  };
}
