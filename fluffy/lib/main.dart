import 'package:fluffy/music.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fluffy Demo',
      home: const MyHomePage(title: 'Fluffy'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Music> MyMusicList = [
    Music('Gasolina', 'Tiakola (feat. Rsko)', 'assets/img/tiakola-melo.jpg',
        'assets/mp3/Tiakola - Gasolina ft. Rsko.mp3'),
    Music('CELINE 3X', 'Gazo', 'assets/img/Gazo Celine 3x.jpg',
        'assets/mp3/GAZO - CELINE 3X.mp3'),
    Music('La 15 (GSXR)', 'Timal', 'assets/img/La 15.jpg',
        'assets/mp3/Timal - La 15 (GSXR).mp3'),
    Music(
        'AMARU', 'Dinos', 'assets/img/dinos amaru.jpg', 'assets/mp3/AMARU.mp3'),
    Music('Temps Perdu', 'ZKR', 'assets/img/temps perdu zkr.png',
        'assets/mp3/Exclu Zkr Temp perdu.mp3'),
    Music('Vérité', 'Ninho', 'assets/img/ninho veitté.jpg',
        'assets/mp3/Vérité.mp3'),
    Music('You Know', 'Ziak', 'assets/img/ziak you know.jpg',
        'assets/mp3/Ziak - You know.mp3')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text(widget.title)),
        backgroundColor: const Color.fromARGB(255, 217, 100, 91),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color.fromARGB(255, 217, 100, 91),
              Color.fromARGB(255, 30, 14, 13),
            ],
          )),
          child: Column(children: [
            SizedBox(height: 30),
            const Text(
              'Playlist.',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 10,
                  color: Colors.grey),
            ),
            Image.asset(
              'img/logo.jpg',
              height: 200,
              width: 400,
            ),
            const Text(
              'Toutes les nouveautés du rap français. Photo : Tiakola',
              style: TextStyle(
                fontWeight: FontWeight.w300,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 10),
            const Text(
              '7 Titres',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 30),
            Expanded(
              child: ListView(padding: EdgeInsets.zero, children: [
                ListTile(
                  title: Text(
                    (MyMusicList[0].title),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 7),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text((MyMusicList[0].singer),
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w500,
                                fontSize: 12)),
                        Text("3.03",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 12))
                      ],
                    ),
                  ),
                  leading: Container(
                    width: 50,
                    height: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black,
                        image: DecorationImage(
                          image: AssetImage("img/tiakola-melo.jpg"),
                        )),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Playroute()),
                    );
                  },
                ),
                SizedBox(height: 30),
                ListTile(
                    title: Text(
                      (MyMusicList[3].title),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 7),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text((MyMusicList[3].singer),
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12)),
                          Text("2.34",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12))
                        ],
                      ),
                    ),
                    leading: Container(
                      width: 50,
                      height: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black,
                          image: DecorationImage(
                            image: AssetImage("img/AMARU.jpg"),
                          )),
                    )),
                SizedBox(height: 30),
                ListTile(
                    title: Text(
                      (MyMusicList[1].title),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 7),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text((MyMusicList[1].singer),
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12)),
                          Text("2.36",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12))
                        ],
                      ),
                    ),
                    leading: Container(
                      width: 50,
                      height: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black,
                          image: DecorationImage(
                            image: AssetImage("img/Celine3x.jpg"),
                          )),
                    )),
                SizedBox(height: 30),
                ListTile(
                    title: Text(
                      (MyMusicList[2].title),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 7),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text((MyMusicList[2].singer),
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12)),
                          Text("2.50",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12))
                        ],
                      ),
                    ),
                    leading: Container(
                      width: 50,
                      height: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black,
                          image: DecorationImage(
                            image: AssetImage("img/La15.jpg"),
                          )),
                    )),
                SizedBox(height: 30),
                ListTile(
                    title: Text(
                      (MyMusicList[4].title),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 7),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text((MyMusicList[4].singer),
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12)),
                          Text("3.32",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12))
                        ],
                      ),
                    ),
                    leading: Container(
                      width: 50,
                      height: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black,
                          image: DecorationImage(
                            image: AssetImage("img/zkr.png"),
                          )),
                    )),
                SizedBox(height: 30),
                ListTile(
                    title: Text(
                      (MyMusicList[5].title),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 7),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text((MyMusicList[5].singer),
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12)),
                          Text("3.20",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12))
                        ],
                      ),
                    ),
                    leading: Container(
                      width: 50,
                      height: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black,
                          image: DecorationImage(
                            image: AssetImage("img/ninho.jpg"),
                          )),
                    )),
                SizedBox(height: 30),
                ListTile(
                    title: Text(
                      (MyMusicList[6].title),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 7),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text((MyMusicList[6].singer),
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12)),
                          Text("2.15",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12))
                        ],
                      ),
                    ),
                    leading: Container(
                      width: 50,
                      height: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black,
                          image: DecorationImage(
                            image: AssetImage("img/ziak.jpg"),
                          )),
                    )),
                SizedBox(height: 30),
                ListTile(
                    //title: Text(MyMusicList[0].title),
                    leading: Container(
                  width: 50,
                  height: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black,
                      image: DecorationImage(
                        image: AssetImage("img/tiakola-melo.jpg"),
                      )),
                )),
              ]),
            )
          ]),
        ),
      ),
    );
  }
}

class Playroute extends StatelessWidget {
  List<Music> MyMusicList = [
    Music('Gasolina', 'Tiakola (feat. Rsko)', 'assets/img/tiakola-melo.jpg',
        'assets/mp3/Tiakola - Gasolina ft. Rsko.mp3'),
    Music('CELINE 3X', 'Gazo', 'assets/img/Gazo Celine 3x.jpg',
        'assets/mp3/GAZO - CELINE 3X.mp3'),
    Music('La 15 (GSXR)', 'Timal', 'assets/img/La 15.jpg',
        'assets/mp3/Timal - La 15 (GSXR).mp3'),
    Music(
        'AMARU', 'Dinos', 'assets/img/dinos amaru.jpg', 'assets/mp3/AMARU.mp3'),
    Music('Temps Perdu', 'ZKR', 'assets/img/temps perdu zkr.png',
        'assets/mp3/Exclu Zkr Temp perdu.mp3'),
    Music('Vérité', 'Ninho', 'assets/img/ninho veitté.jpg',
        'assets/mp3/Vérité.mp3'),
    Music('You Know', 'Ziak', 'assets/img/ziak you know.jpg',
        'assets/mp3/Ziak - You know.mp3')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Fluffy')),
          backgroundColor: const Color.fromARGB(255, 217, 100, 91),
        ),
        body: Center(
            child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color.fromARGB(255, 217, 100, 91),
              Color.fromARGB(255, 30, 14, 13),
            ],
          )),
          child: Column(children: [
            SizedBox(height: 60),
            Image.asset(
              'img/tiakola-melo.jpg',
              height: 300,
              width: 600,
            ),
            SizedBox(height: 40),
            ListTile(
                title: Text(
                  (MyMusicList[0].title),
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey,
                      fontSize: 30),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 7),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text((MyMusicList[0].singer),
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              fontSize: 18)),
                    ],
                  ),
                )),
            SizedBox(height: 80),
            IconButton(
              icon: Icon(Icons.play_circle),
              onPressed: () {},
              color: Colors.black,
              iconSize: 80,
            ),
            // const Text(
            //   'Toutes les nouveautés du rap français. Photo : Tiakola',
            //   style: TextStyle(
            //     fontWeight: FontWeight.w300,
            //     color: Colors.grey,
            //   ),
            // ),
            // SizedBox(height: 10),
            // const Text(
            //   '7 Titres',
            //   style: TextStyle(
            //     fontWeight: FontWeight.bold,
            //     color: Colors.grey,
            //   ),
            // ),
          ]),
        )));
  }
}
