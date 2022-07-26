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
    'Tracy',
    'Mary',
  ];

  static final List<Map<String, String>> conditions = <Map<String, String>>[
    // Janice

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
    <String, String>{'nathan': 'Nathan gets too far ahead on a hike'},
    // Jason
    <String, String>{'jason': 'Jason has late night chocolate snack'},
    // Brianna
    <String, String>{'brianna': 'Brianna cries'},
    // Jared
    <String, String>{'jared': 'Jared hug squeezes or bounce hugs someone.'},
    <String, String>{'jared': 'Jared complains about old person pains'},
    <String, String>{
      'jared': 'Jared picks at the skin on his hands and fingers'
    },
    <String, String>{
      'jared':
          'Jared says his catchphrase - "You\'re pretty good for someone without a tank top'
    },
    // Lindsey
    <String, String>{'lindsey': "Lindsey finds a bug in J's app"},
    <String, String>{'lindsey': 'Lindsey boxes Jared'},
    <String, String>{'lindsey': 'Lindsey starts beating up on Nathan'},
    // Rhonda
    <String, String>{'rhonda': 'Rhonda laughs hysterically'},
    <String, String>{'rhonda': 'Rhonda plays non-bingo games on her phone'},
    <String, String>{'rhonda': 'Rhonda makes a covert dig'},
    <String, String>{'rhonda': 'Rhonda stops to take pictures of wildflowers'},
    // Rachel
    <String, String>{'rachel': 'Rachel has a breakfast beer'},
    <String, String>{'rachel': 'Rachel has a salad for breakfast'},
    <String, String>{'rachel': 'Rachel plays punk music'},
    <String, String>{'rachel': 'Rachel says "Umm" in a high pitched voice'},
    // Chris
    <String, String>{'chris': 'Chris cheers his diet coke with Rhonda'},
    <String, String>{'chris': 'Chris wears something with a spider on it'},
    <String, String>{'chris': 'Chris fixes something'},
    // Amanda
    <String, String>{'amanda': 'Amanda talks about missing Porter'},
    <String, String>{'amanda': 'Amanda winks while poking fun at someone'},
    // Derek
    <String, String>{'derek': 'Derek makes an obscure movie/tv reference'},
    <String, String>{'derek': 'Derek asks to play dick'},
    // Larry
    <String, String>{'larry': 'Larry twirls his eyeglass arm in his ear'},
    <String, String>{'larry': 'Larry references something he saw on Facebook'},
    <String, String>{'larry': 'Larry plays bartender'},
    // Tracy
    <String, String>{'tracy': 'Tracy says "I will blaze you up"'},
    <String, String>{'tracy': 'Tracy threatens violence against Larry'},
    // Mary
    <String, String>{'mary': 'Mary winks while poking fun at someone'},
    <String, String>{'mary': 'Mary wears a floral shirt'},
  ];

  static final List<Map<String, Map<String, String>>> quiz =
      <Map<String, Map<String, String>>>[
    <String, Map<String, String>>{
      "Who are the enemies in the 1998 classic A Bug's Life": <String, String>{
        'a': 'Wasps',
        'b': 'Grasshoppers',
        'c': 'Fleas',
        'd': 'Caterpillars',
      }
    },
    <String, Map<String, String>>{
      'Where did it all begin?': <String, String>{
        'a': 'Lake Lure',
        'b': 'NC State',
        'c': '',
        'd': '',
      }
    },
    <String, Map<String, String>>{
      'What song did Brianna tumble to in her 2001 recital?': <String, String>{
        'a': "A Bug's Life",
        'b': 'Hard Knock Life',
        'c': '',
        'd': 'Somewhere Over The Rainbow',
      }
    },
    <String, Map<String, String>>{
      "What is Brianna's favorite feature of Jason's?": <String, String>{
        'a': 'Butt',
        'b': 'Smile',
        'c': 'Big Brain',
        'd': 'Cool Hair',
      }
    },
    <String, Map<String, String>>{
      'Where did Jason finally propose to Brianna?': <String, String>{
        'a': 'Tahoe',
        'b': 'Winds',
        'c': 'Maine',
        'd': '',
      }
    },
    <String, Map<String, String>>{
      'What song was not on the first album Jason burned for Brianna?':
          <String, String>{
        'a': '',
        'b': '',
        'c': '',
        'd': '',
      }
    },
    <String, Map<String, String>>{
      'Where was our first date?': <String, String>{
        'a': '',
        'b': '',
        'c': '',
        'd': '',
      }
    },
    <String, Map<String, String>>{
      'Where did the term bugs come from?': <String, String>{
        'a': '',
        'b': '',
        'c': '',
        'd': '',
      }
    },
  ];
}
