import 'package:fluffy/data.dart';
import 'package:fluffy/main.dart';
import 'package:fluffy/music.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audio_session/audio_session.dart';
import 'package:flutter/services.dart';
import 'package:just_audio/just_audio.dart';
import 'package:rxdart/rxdart.dart';

class DetailMusic extends StatelessWidget {
  const DetailMusic({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fluffy Demo',
      home: const DetailMusicSW(title: 'Fluffy'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class DetailMusicSW extends StatefulWidget {
  const DetailMusicSW({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<DetailMusicSW> createState() => DetailMusicState();
}

class DetailMusicState extends State<DetailMusicSW> {
  final _player = AudioPlayer();

  bool icon = false;
  int count = 0;

  @override
  void initState() {
    super.initState();
    _init();
  }

  void _init() async {
    await _player.setAsset(MyMusicList[count].urlSong);
  }

  void check() {
    if (icon = icon) {
      _player.play();
    } else {
      _player.pause();
      _player.seek(Duration.zero);
    }
  }

  void skip(int SkipOrPass) {
    setState(() {
      count += SkipOrPass;
      if (count < 0) {
        count = 0;
      } else if (count > MyMusicList.length - 1) {
        count = MyMusicList.length - 1;
      } else {
        _init();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Fluffy')),
          backgroundColor: const Color.fromARGB(255, 217, 100, 91),
          leading: GestureDetector(
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onTap: () {
              //Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MyHomePage(
                          title: 'Fluffy',
                        )),
              );
            },
          ),
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
              MyMusicList[count].imagePath,
              height: 300,
              width: 600,
            ),
            SizedBox(height: 40),
            ListTile(
                title: Text(
                  (MyMusicList[count].title),
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
                      Text((MyMusicList[count].singer),
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              fontSize: 18)),
                    ],
                  ),
                )),
            SizedBox(height: 100),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: Icon(Icons.skip_previous_sharp),
                  onPressed: () {
                    skip(-1);
                  },
                  color: Colors.grey,
                  iconSize: 80,
                ),
                IconButton(
                  icon: (icon)
                      ? new Icon(Icons.pause_circle)
                      : new Icon(Icons.play_circle),
                  onPressed: () {
                    setState(() {
                      icon = !icon;
                    });
                    check();
                  },
                  color: Colors.grey,
                  iconSize: 80,
                ),
                IconButton(
                  icon: Icon(Icons.skip_next_sharp),
                  onPressed: () {
                    skip(1);
                  },
                  color: Colors.grey,
                  iconSize: 80,
                ),
              ],
            ),
            StreamBuilder(
                stream: _player.durationStream,
                builder: (context, asyncSnapshot) {
                  final Object? duration = asyncSnapshot.data;
                  return Text(
                    duration.toString(),
                    style: const TextStyle(fontSize: 21, color: Colors.grey),
                  );
                }),
          ]),
        )));
  }
}
