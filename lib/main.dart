import 'package:flutter/material.dart';
import 'package:flutter_youtube/flutter_youtube.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;

  var youtube = new FlutterYoutube();
  _onTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {

       void playYoutube() {
      FlutterYoutube.playYoutubeVideoByUrl(
        apiKey: 'AIzaSyCNspU2XMe-zTSUOQSQVHBQtEui-916oBU',
        videoUrl: 'https://youtu.be/wQKAbu99drA',
      );
    }
    return new MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.blue[900]),
      home: new Scaffold(
          bottomSheet: Image.asset('assets/images/footer.png'),
          bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.grey,
          onTap: _onTapped,
          items: [
            BottomNavigationBarItem(
              title: Text(""),
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              title: Text(""),
              icon: Icon(Icons.play_circle_outline),
            ),
            BottomNavigationBarItem(
              title: Text(""),
              icon: Icon(Icons.tv),
            ),
            BottomNavigationBarItem(
              title: Text(""),
              icon: Icon(Icons.date_range),
            ),
            BottomNavigationBarItem(
              title: Text(""),
              icon: Icon(Icons.drag_handle),
            ),
          ],
        ),
        body: ListView(
          children: <Widget>[
            Image.asset(
              'assets/images/header.png',
              fit: BoxFit.cover,
            ),
            Column(
                children: <Widget>[
                  Container(
                    color: Colors.grey[900],
                    width: 400,
                    height: 150,
                    child: InkWell(
                      onTap: ()=> playYoutube(),
                      child: Image.network('https://cdn3.iconfinder.com/data/icons/flat-audio-video/16/02_youtube-play-video-512.png'),
                    ),
                  ),
                ],
              ),

            Card(
              child: Container(
                height: 90,
                color: Colors.blue[900],
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'NOW',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.amberAccent[400],
                              ),
                            ),
                          ),
                          Text(
                            'SHOWING',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'ไมค์หมดหนี้',
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                          ),
                          Text(
                            'ทุกวันจันทร์-ศุกร์ 18.00-19.00น',
                            style: TextStyle(fontSize: 15, color: Colors.white),
                          ),
                        ],
                      ),
                    ]),
              ),
            ),
            Card(
                color: Colors.blue[800],
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                      Row(
                        children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('00:00 - 00:35',style: TextStyle(color: Colors.white, fontSize: 13),),
                        ), Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Hello Shops',style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),),
                        ),
                      ],),
                      Row(children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('00:00 - 00:35',style: TextStyle(color: Colors.white, fontSize: 13),),
                        ), Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('กล่องของขวัญ',style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),),
                        ),
                      ],),
                      Row(children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('00:00 - 00:35',style: TextStyle(color: Colors.white, fontSize: 13),),
                        ), Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('ชิงร้อย ชิงล้าน ว้าว ว้าว ว้าว',style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),),
                        ),
                      ],),
                      Row(children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('00:00 - 00:35',style: TextStyle(color: Colors.white, fontSize: 13),),
                        ), Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Hello Shops',style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),),
                        ),
                      ],),
                      Row(children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('00:00 - 00:35',style: TextStyle(color: Colors.white, fontSize: 13),),
                        ), Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('โปรุส ศึกสองราชันย์',style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),),
                        ),
                      ],),
                      Row(children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('00:00 - 00:35',style: TextStyle(color: Colors.white, fontSize: 13),),
                        ), Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('ระเบิดเถิดเทิงซอยข้าใครอย่าแตะ',style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),),
                        ),
                      ],),
                      Row(children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('00:00 - 00:35',style: TextStyle(color: Colors.white, fontSize: 13),),
                        ), Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('ข่าวเวิร์คพ้อยท์',style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),),
                        ),
                      ],),
                      Row(children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('00:00 - 00:35',style: TextStyle(color: Colors.white, fontSize: 13),),
                        ), Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('ร้านเด็ดประเทสไทย',style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),),
                        ),
                      ],),
                      Row(children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('00:00 - 00:35',style: TextStyle(color: Colors.white, fontSize: 13),),
                        ), Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('เต็มปากเต็มคำ',style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),),
                        ),
                      ],),
                      ],),
                  ),
                ),
            ),
          ],
        ),
      ),
    );
  }
}
void setState(_onTapped()) {}
