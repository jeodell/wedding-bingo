mixin BingoData {
  static final List<String> guestList = <String>[
    'Brianna',
    'Jason',
    'Jared',
    'Lindsey',
    'Nathan',
    'Jennifer',
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
    <String, String>{'name': 'steve', 'condition': "Steve says 'Nice.'"},
    <String, String>{
      'name': 'steve',
      'condition': "Steve mentions Jason's 'Big Brain'"
    },
    <String, String>{
      'name': 'steve',
      'condition': 'Steve ignores someone while on his phone'
    },
    <String, String>{'name': 'steve', 'condition': 'Steve refuses vegetables'},
    // Nathan
    <String, String>{
      'name': 'nathan',
      'condition': 'Nathan does knees over toes'
    },
    <String, String>{
      'name': 'nathan',
      'condition': 'Nathan talks about crypto or NFTs'
    },
    <String, String>{
      'name': 'nathan',
      'condition': 'Nathan says his catchphrase - "Zip Zap Zop"'
    },
    <String, String>{
      'name': 'nathan',
      'condition': 'Nathan is goaded into doing the splits'
    },
    <String, String>{
      'name': 'nathan',
      'condition': 'Nathan makes a joke about sloppy steaks on steak night'
    },
    // Jennifer
    // Jason
    <String, String>{
      'name': 'jason',
      'condition': 'Jason has late night chocolate snack'
    },
    // Brianna
    <String, String>{'name': 'brianna', 'condition': 'Brianna cries'},
    <String, String>{
      'name': 'brianna',
      'condition': 'Brianna falls off her electric bike'
    },
    // Jared
    <String, String>{
      'name': 'jared',
      'condition': 'Jared hug squeezes or bounce hugs someone'
    },
    <String, String>{
      'name': 'jared',
      'condition': 'Jared complains about old person pains'
    },
    <String, String>{
      'name': 'jared',
      'condition': 'Jared picks at the skin on his hands'
    },
    <String, String>{
      'name': 'jared',
      'condition':
          'Jared says his catchphrase - "You\'re pretty good for someone without a tank top'
    },
    // Lindsey
    <String, String>{
      'name': 'lindsey',
      'condition': "Lindsey finds a bug in J's app"
    },
    <String, String>{'name': 'lindsey', 'condition': 'Lindsey boxes Jared'},
    <String, String>{
      'name': 'lindsey',
      'condition': 'Lindsey starts beating up on Nathan'
    },
    <String, String>{
      'name': 'lindsey',
      'condition': 'Lindsey sneezes more than twice in a row'
    },
    // Rhonda
    <String, String>{
      'name': 'rhonda',
      'condition': 'Rhonda looks for her glasses'
    },
    <String, String>{
      'name': 'rhonda',
      'condition': 'Rhonda plays non-bingo games on her phone'
    },
    <String, String>{
      'name': 'rhonda',
      'condition': 'Rhonda stops to take pictures of wildflowers'
    },
    // Rachel
    <String, String>{
      'name': 'rachel',
      'condition': 'Rachel has a breakfast beer'
    },
    <String, String>{
      'name': 'rachel',
      'condition': 'Rachel has a salad for breakfast'
    },
    <String, String>{'name': 'rachel', 'condition': 'Rachel plays punk music'},
    <String, String>{
      'name': 'rachel',
      'condition': 'Rachel says "Umm" in a high pitch'
    },
    // Chris
    <String, String>{
      'name': 'chris',
      'condition': 'Chris asks Rhonda if she wants a diet coke'
    },
    <String, String>{
      'name': 'chris',
      'condition': 'Chris wears something with a spider on it'
    },
    <String, String>{'name': 'chris', 'condition': 'Chris sneezes absurdly'},
    <String, String>{
      'name': 'chris',
      'condition': 'Chris says "Well you know what, Haferman..."'
    },
    // Amanda
    <String, String>{
      'name': 'amanda',
      'condition': 'Amanda talks about missing Porter'
    },
    <String, String>{
      'name': 'amanda',
      'condition': 'Amanda winks while poking fun at someone'
    },
    // Derek
    <String, String>{
      'name': 'derek',
      'condition': 'Derek makes an obscure movie/tv reference'
    },
    <String, String>{
      'name': 'derek',
      'condition': 'Derek asks to toss the disk'
    },
    <String, String>{
      'name': 'derek',
      'condition': 'Derek wears a metal band shirt'
    },
    // Janice
    <String, String>{
      'name': 'janice',
      'condition': 'Janice says something about Costco'
    },
    // Larry
    <String, String>{
      'name': 'larry',
      'condition': 'Larry twirls his eyeglass arm in his ear'
    },
    <String, String>{
      'name': 'larry',
      'condition': 'Larry references something he saw on Facebook'
    },
    <String, String>{'name': 'larry', 'condition': 'Larry plays bartender'},
  ];

  static final Map<String, int> numPhotos = <String, int>{
    'jason': 1,
    'brianna': 1,
    'nathan': 1,
    'jennifer': 1,
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
