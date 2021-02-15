class Page {
  String title, imageLoc;

  Page({this.imageLoc, this.title});
}

class Chapter {
  String name;
  String coverImage;

  Chapter({this.name, this.coverImage});
}

class Series {
  String name;
  String coverImage;

  Series({this.name, this.coverImage});
}

var narutoChapter232 = [
  Page(
    title: 'Chapter 232 - Page 1',
    imageLoc: 'images/naruto232/naruto_ch232_p01.jpg',
  ),
  Page(
    title: 'Chapter 232 - Page 2',
    imageLoc: 'images/naruto232/naruto_ch232_p02.jpg',
  ),
];

var bleachChapter25 = [
  Page(
    title: 'Chapter 25 - Page 1',
    imageLoc:
        'images/bleach25/bleach-1586060-961a2994657e0b56ff1af6295f854999.jpg',
  ),
  Page(
    title: 'Chapter 25 - Page 2',
    imageLoc:
        'images/bleach25/bleach-1586061-c5a06fdd77e39057d8571e74c58433b7.jpg',
  ),
];

var chapters = [
  Chapter(
    name: 'narutoChapter232',
    coverImage:
        'https://static.wikia.nocookie.net/naruto/images/e/e3/Vol26.png/revision/latest/scale-to-width-down/300?cb=20141102215451',
  ),
  Chapter(
    name: 'bleachChapter25',
    coverImage:
        'https://static.wikia.nocookie.net/bleach/images/7/75/MangaVolume3Cover.png/revision/latest/scale-to-width-down/759?cb=20190731054852&path-prefix=en',
  ),
  Chapter(
    name: 'hunterxhunterChapter202',
    coverImage:
        'https://static.wikia.nocookie.net/hunterxhunter/images/7/73/Volume20cover.jpg/revision/latest/scale-to-width-down/752?cb=20170803090038',
  ),
  Chapter(
    name: 'dragonballzChapter342',
    coverImage:
        'https://static.wikia.nocookie.net/dragonball/images/0/0b/DBJ29.jpg/revision/latest/scale-to-width-down/200?cb=20130226151215',
  ),
  Chapter(
    name: 'onepieceChapter336',
    coverImage:
        'https://static.wikia.nocookie.net/onepiece/images/6/65/Volume_35.png/revision/latest/scale-to-width-down/753?cb=20130115023232',
  ),
];

/*
  // implement this when you have full volumes  
  var series = [
  Series(
    name: 'Naruto',
    coverImage:
        'https://occ-0-1009-1001.1.nflxso.net/dnm/api/v6/XsrytRUxks8BtTRf9HNlZkW2tvY/AAAABUsuJAhrY_O2wzX0YUuwOaWLp1Ee7D6O4oWe1spXrVKWGNywIhz6I9g5mitrlu1dh7Jw0dVzsZG3agmi_F1T4mMOxjYAhmhB4g.jpg',
  ),
];*/
