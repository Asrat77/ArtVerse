class Art{
  String name;
  String artist;
  String releaseDate;
  String deadLine;
  double currentBid;
  String imageUrl;
  String description;


  Art(
      this.name,
      this.artist,
      this.releaseDate,
      this.deadLine,
      this.currentBid,
      this.imageUrl,
      this.description
      );

  static List<Art> samples = [
    Art(
        'van gogh',
        'Vincent Van Gogh',
        '20/10/1853',
        '20/10/2023',
        970000,
        'assets/self-portrait.jpg',
            '''Vincent Willem van Gogh was a 
          Dutch Post-Impressionist painter
          one of the most who posthumously became 
          famous and influential 
          figures in Western art history. ''',
        ),
    Art(
      'van gogh 2',
      'Vincent Van Gogh',
      '20/10/1880',
      '20/10/2023',
      220000,
      'assets/gogh-vincent-van.jpg',
      '''Vincent Willem van Gogh was a 
          Dutch Post-Impressionist painter.
           ''',


    ),
    Art(
      'bob ross joy',
      'Bob Ross',
      '20/10/1990',
      '20/10/2023',
      22000,
      'assets/bob-ross.jpg',
        '''-''',

    ),
    Art(
      'michel',
      'Jean michel Basq',
      '20/10/1999',
      '20/10/2023',
      42000,
      'assets/michel.jpg',
        '''This is a very very 
        very very very very Long description''',

    ),
    Art(
      'Jojo',
      'Yohanna Getachew',
      '20/10/1999',
      '20/10/2023',
      42000,
      "assets/jojo.jpg",
      '''This is Art''',

    ),

  ];


}