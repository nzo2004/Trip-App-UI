import 'package:day2_trip/FadeAnimation.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Nunito'),
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  PageController _pageController;
  int totalPage = 10;

  void _onScroll() {}

  @override
  void initState() {
    _pageController = PageController(
      initialPage: 0,
    )..addListener(_onScroll);

    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          makePage(
              page: 1,
              image: 'assets/images/Istanbul.jpg',
              title: 'İstanbul',
              description:
                  'Istanbul has hosted and capitalized many states and empires in its history and is considered the economic heart of Turkey.'),
          makePage(
              page: 2,
              image: 'assets/images/Tokyo.jpg',
              title: 'Tokyo',
              description:
                  'Tokyo is the capital and largest city of Japan and one of the most popular metropolises in the world with its advanced technology, dynamic cultural scene, magnificent architecture and vibrant nightlife.'),
          makePage(
              page: 3,
              image: 'assets/images/NewYork.jpg',
              title: 'New York',
              description:
                  "New York, the most populous and culturally diverse city of the United States, is renowned as a metropolis where skyscrapers rise, and it serves as a hub for art, fashion, finance, and entertainment industries."),
          makePage(
              page: 4,
              image: 'assets/images/Kore.jpg',
              title: 'Korea',
              description:
                  "In Korea, among the places to visit, the capital city Seoul offers many options to explore, including historical areas and modern streets. Additionally, you can discover the natural beauty of South Korea in regions like Jeju Island. However, traveling to North Korea requires more restrictions and careful planning."),
          makePage(
              page: 5,
              image: 'assets/images/Moscowa.jpg',
              title: 'Moscowa',
              description:
                  'In Russia, you can visit iconic cities like Moscow and St. Petersburg, explore the Trans-Siberian Railway, and discover natural wonders like the Altai Mountains. Russia offers a rich cultural heritage and diverse landscapes to explore.'),
          makePage(
              page: 6,
              image: 'assets/images/Paris.jpg',
              title: 'Paris',
              description:
                  'Paris is the capital of France and is known as the symbol of romance. You can visit iconic landmarks such as the Eiffel Tower, Louvre Museum, and Notre-Dame Cathedral, enjoy shopping on Champs-Élysées, and take a romantic stroll along the Seine River. Paris is also famous for its world-class cuisine and renowned café culture.'),
          makePage(
              page: 7,
              image: 'assets/images/London.jpg',
              title: 'London',
              description:
                  'London is the capital of England and is famous for its cultural richness. You can visit iconic landmarks such as Big Ben, Tower Bridge, and Buckingham Palace, explore museums, and take a pleasant walk along the River Thames. Additionally, you can enjoy delicious cuisine in various restaurants and indulge in shopping at shopping centers. With its rich historical fabric and vibrant atmosphere, London offers an unforgettable experience to every visitor.'),
          makePage(
              page: 8,
              image: 'assets/images/Berlin.jpg',
              title: 'Berlin',
              description:
                  "Berlin is the capital and cultural hub of Germany. You can visit iconic landmarks such as Brandenburg Gate, Berlin Wall, and Reichstag Building, explore museums, and experience its vibrant atmosphere. Berlin is renowned for its lively art and music scenes, as well as its diverse culinary offerings from both German and international cuisines."),
          makePage(
              page: 9,
              image: 'assets/images/Norway.jpg',
              title: 'Norway',
              description:
                  "Norway offers stunning fjords, historic cities, and the mesmerizing Northern Lights for an unforgettable experience. Explore Sognefjord, Geirangerfjord, and Nærøyfjord. Discover culture in Oslo and witness the Northern Lights in Nordkapp or Lofoten Islands. Enjoy outdoor activities in Norway's beautiful nature. It's a captivating destination with breathtaking beauty.."),
          makePage(
              page: 10,
              image: 'assets/images/Pekin.jpg',
              title: 'Beijing',
              description:
                  'Beijing is the capital of China and a cultural hub. You can visit the legendary Great Wall of China, explore the Forbidden City, and experience the historical significance of Tiananmen Square. Additionally, you can visit the 798 Art District to see traditional and contemporary Chinese artworks. Beijing is an impressive city with a rich history, cultural heritage, and stunning architectural wonders.'),
        ],
      ),
    );
  }

  Widget makePage({image, title, description, page}) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.bottomRight, stops: [
          0.3,
          0.9
        ], colors: [
          Colors.black.withOpacity(.9),
          Colors.black.withOpacity(.2),
        ])),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: <Widget>[
                    FadeAnimation(
                        2,
                        Text(
                          page.toString(),
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        )),
                    Text(
                      '/' + totalPage.toString(),
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    )
                  ],
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      FadeAnimation(
                          1,
                          Text(
                            title,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 50,
                                height: 1.2,
                                fontWeight: FontWeight.bold),
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      FadeAnimation(
                          1.5,
                          Row(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(right: 3),
                                child: Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 15,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 3),
                                child: Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 15,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 3),
                                child: Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 15,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 3),
                                child: Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 15,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 5),
                                child: Icon(
                                  Icons.star,
                                  color: Colors.grey,
                                  size: 15,
                                ),
                              ),
                              Text(
                                '4.0',
                                style: TextStyle(color: Colors.white70),
                              ),
                              Text(
                                '(2300)',
                                style: TextStyle(
                                    color: Colors.white38, fontSize: 12),
                              )
                            ],
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      FadeAnimation(
                          2,
                          Padding(
                            padding: const EdgeInsets.only(right: 50),
                            child: Text(
                              description,
                              style: TextStyle(
                                  color: Colors.white.withOpacity(.7),
                                  height: 1.9,
                                  fontSize: 15),
                            ),
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      FadeAnimation(
                          2.5,
                          Text(
                            'DEVAMINI OKU',
                            style: TextStyle(color: Colors.white),
                          )),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
