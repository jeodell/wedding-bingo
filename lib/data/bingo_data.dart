mixin BingoData {
  static final List<String> guestList = <String>[
    'Amanda',
    'Brianna',
    'Chris',
    'Derek',
    'Janice',
    'Jared',
    'Jason',
    'Jennifer',
    'Larry',
    'Lindsey',
    'Nathan',
    'Rachel',
    'Rhonda',
    'Steve',
  ];

  static final List<Map<String, String>> conditions = <Map<String, String>>[
    // Steve
    <String, String>{'name': 'steve', 'condition': "Steve says 'Nice.'"},
    <String, String>{
      'name': 'steve',
      'condition': 'Steve mentions Jason\'s "Big Brain"'
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
      'condition': 'Nathan randomly starts stretching'
    },
    <String, String>{
      'name': 'nathan',
      'condition': 'Nathan makes a joke about sloppy steaks on steak night'
    },
    <String, String>{
      'name': 'nathan',
      'condition': 'Nathan tries to one-up Jared'
    },
    // Jennifer
    <String, String>{
      'name': 'jennifer',
      'condition': 'Jennifer eats a strange food combination'
    },
    <String, String>{
      'name': 'jennifer',
      'condition': 'Jennifer mentions outside germs'
    },
    <String, String>{'name': 'jennifer', 'condition': 'Jennifer says "oh wow"'},
    // Jason
    <String, String>{
      'name': 'jason',
      'condition': 'Jason has late night chocolate snack'
    },
    <String, String>{
      'name': 'jason',
      'condition':
          'J gets into comfy clothes immediately after arriving back at the house'
    },
    <String, String>{
      'name': 'jason',
      'condition':
          'J randomly headbangs/flips his hair up and down aggressively'
    },
    <String, String>{
      'name': 'jason',
      'condition': 'J makes a self deprecating joke'
    },
    // Brianna
    <String, String>{'name': 'brianna', 'condition': 'Brianna cries'},
    <String, String>{
      'name': 'brianna',
      'condition': 'Brianna makes non-human sounds back and forth with someone'
    },
    <String, String>{
      'name': 'brianna',
      'condition':
          'Brianna falls behind on a hike because she is taking pictures'
    },
    <String, String>{
      'name': 'brianna',
      'condition': 'Brianna dominates in a board game'
    },
    <String, String>{'name': 'brianna', 'condition': 'Brianna tackles J'},
    // Jared
    <String, String>{
      'name': 'jared',
      'condition': 'Jared squeeze hugs or bounce hugs someone'
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
      'condition': 'Jared participates in making a beat'
    },
    // Lindsey
    <String, String>{
      'name': 'lindsey',
      'condition': 'Lindsey starts boxing Jared'
    },
    <String, String>{'name': 'lindsey', 'condition': 'Lindsey insults Nathan'},
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
      'condition': 'Rhonda mixes up a common word or phrase'
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
    <String, String>{'name': 'rachel', 'condition': 'Rachel plays punk music'},
    <String, String>{
      'name': 'rachel',
      'condition': 'Rachel says "Umm" in a high pitch voice'
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
    <String, String>{
      'name': 'amanda',
      'condition': 'Amanda runs away from an insect'
    },
    // Derek
    <String, String>{
      'name': 'derek',
      'condition': 'Derek makes an obscure movie/tv reference'
    },
    <String, String>{
      'name': 'derek',
      'condition': 'Derek wears a metal band shirt'
    },
    <String, String>{
      'name': 'derek',
      'condition': 'Derek shares an interesting nature fact'
    },
    // Janice
    <String, String>{
      'name': 'janice',
      'condition': 'Janice says something about Costco'
    },
    <String, String>{
      'name': 'janice',
      'condition': 'Janice helps out and says "Tell me what you need me to do"'
    },
    <String, String>{
      'name': 'janice',
      'condition':
          'Janice does a head tilt, smile, hand clasp, and says "Aww" at something adorable'
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
    'amanda': 2,
    'brianna': 4,
    'chris': 1,
    'derek': 1,
    'janice': 1,
    'jared': 3,
    'jason': 3,
    'jennifer': 1,
    'larry': 1,
    'lindsey': 2,
    'nathan': 5,
    'rachel': 3,
    'rhonda': 1,
    'steve': 3,
  };
}
