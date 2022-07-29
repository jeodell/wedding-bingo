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
    // Jason
    <String, String>{'jason': 'Jason has late night chocolate snack'},
    // Brianna
    <String, String>{'brianna': 'Brianna cries'},
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
    <String, String>{'rhonda': 'Rhonda laughs hysterically'},
    <String, String>{'rhonda': 'Rhonda plays non-bingo games on her phone'},
    <String, String>{'rhonda': 'Rhonda makes a covert dig'},
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
    <String, String>{
      'mary': 'Mary gets up from the floor faster than someone younger than her'
    },
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
    'mary': 1,
    'larry': 1,
    'tracy': 1,
    'janice': 1,
    'amanda': 1,
    'derek': 1,
  };

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
    // TODO remove?
    <String, Map<String, String>>{
      'What song did Brianna tumble to in her 2001 recital?': <String, String>{
        'a': "A Bug's Life",
        'b': 'Hard Knock Life',
        'c': 'Baby Shark',
        'd': 'Somewhere Over The Rainbow',
      }
    },
    // TODO re-word
    <String, Map<String, String>>{
      'Where did sparks first fly?': <String, String>{
        'a': 'Lake Lure',
        'b': 'NC State',
        'c': 'Calvary',
        'd': 'High School Graduation',
      }
    },
    <String, Map<String, String>>{
      "What is Brianna's favorite feature of Jason?": <String, String>{
        'a': 'Butt',
        'b': 'Smile',
        'c': 'Big Brain',
        'd': 'Cool Hair',
      }
    },
    // or
    <String, Map<String, String>>{
      "What is J's best feature?": <String, String>{
        'a': 'Long Back',
        'b': 'Boney Shoulders',
        'c': 'Big Brain',
        'd': 'All of the Above',
      }
    },
    <String, Map<String, String>>{
      'Where did Jason finally propose to Brianna?': <String, String>{
        'a': 'Tahoe',
        'b': 'Wind River Range',
        'c': 'Maine',
        'd': 'Sawtooth Mountains',
      }
    },
    <String, Map<String, String>>{
      'What song was not on the first album Jason burned for Brianna?':
          <String, String>{
        'a': 'Sk8r Boi',
        'b': '',
        'c': '',
        'd': '',
      }
    },
    <String, Map<String, String>>{
      'Where was our first date?': <String, String>{
        'a': 'Caribou Coffee',
        'b': 'Morning Times',
        'c': 'Port City Java',
        'd': 'Cup a Joe',
      }
    },
    <String, Map<String, String>>{
      'Where did the term bugs come from?': <String, String>{
        'a': 'When J received a random snapchat from HayBug1992',
        'b': 'J put his hair up in two antennae-like sprouts',
        'c': '',
        'd': '',
      }
    },
    <String, Map<String, String>>{
      'What is the most physical pain Brianna has inflicted on J?':
          <String, String>{
        'a': 'Hitting him in the balls with a nerf basketball',
        'b': 'Piercing his ear',
        'c':
            'Shoulder checking his chin while attempting to recreate the Dirty Dancing scene',
        'd': '',
      }
    },
    <String, Map<String, String>>{
      'Where was our first hike?': <String, String>{
        'a': 'Jordan Lake',
        'b': 'Umstead Park',
        'c': 'Hanging Rock',
        'd': 'Grandfather Mountain',
      }
    },
    <String, Map<String, String>>{
      'What was the first national park we visited?': <String, String>{
        'a': 'Great Sand Dunes, CO',
        'b': 'Hot Springs, AR',
        'c': 'Rocky Mountain, CO',
        'd': 'Great Smoky Mountains, NC',
      }
    },
    <String, Map<String, String>>{
      'How many guys were seriously interested in Brianna when J asked her out?':
          <String, String>{
        'a': '1',
        'b': '2',
        'c': '3',
        'd': '4',
      }
    },
  ];
}
