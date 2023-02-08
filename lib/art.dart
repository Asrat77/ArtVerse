class Art{
  String name;
  String artist;
  String releaseDate;
  String deadLine;
  double currentBid;
  String imageUrl;


  Art(
      this.name,
      this.artist,
      this.releaseDate,
      this.deadLine,
      this.currentBid,
      this.imageUrl,
      );

  static List<Art> samples = [
    Art(
        'van gogh',
        'Vincent Van Gogh',
        '20/10/1853',
        '20/10/2023',
        970000,
        'assets/self-portrait.jpg',

        ),
    Art(
      'van gogh 2',
      'Vincent Van Gogh',
      '20/10/1880',
      '20/10/2023',
      220000,
      'assets/gogh-vincent-van.jpg',

    ),
    Art(
      'bob ross joy',
      'Bob Ross',
      '20/10/1990',
      '20/10/2023',
      22000,
      'assets/bob-ross.jpg',

    ),
    Art(
      'bob ross 2',
      'Bob Ross',
      '20/10/1987',
      '20/10/2023',
      42000,
      'assets/bob-ross2.jpg',

    ),

  ];


}