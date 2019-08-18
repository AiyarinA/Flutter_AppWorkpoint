import 'package:flutter/material.dart';
import 'package:flutter_youtube/flutter_youtube.dart';

void main()
 {
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
        List<Widget> _screens = [
          Center(child: Text("Home")),
          Center(child: Text("Playlist")),
          Center(child: Text("playnow")),
          Center(child: Text("Date")),
          Center(child: Text("Listplay")),
        ];

        return new MaterialApp(
          theme: ThemeData(scaffoldBackgroundColor: Colors.blue[900]),
          home: new Scaffold(
             bottomNavigationBar: BottomNavigationBar(
              currentIndex: _currentIndex,
              type: BottomNavigationBarType.fixed,
              fixedColor: Colors.grey,
              onTap: _onTapped,
              items: [
                BottomNavigationBarItem(
                  title: Text(""), icon: Icon(Icons.home),
                ),
                BottomNavigationBarItem(
                  title: Text(""), icon: Icon(Icons.play_circle_outline),
                ),
                BottomNavigationBarItem(
                  title: Text(""), icon: Icon(Icons.tv),
                ),
                BottomNavigationBarItem(
                  title: Text(""), icon: Icon(Icons.date_range),
                ),
                BottomNavigationBarItem(
                  title: Text(""), icon: Icon(Icons.drag_handle),
                ),
              ],
            ),
            body: new ListView(children: <Widget>[
              new Image.asset('assets/images/header.png', fit: BoxFit.cover,),
              Container(
                child: FlutterYoutube.playYoutubeVideoByUrl(
                apiKey: 'AIzaSyCNspU2XMe-zTSUOQSQVHBQtEui-916oBU',
                videoUrl: 'https://www.youtube.com/watch?v=wQKAbu99drA'),
                // padding: EdgeInsets.all(50),
                // color: Colors.green,
                // child: Text("A", style: TextStyle(fontSize: 50, color: Colors.deepOrange),),
              ),
            ],
            ),
          ),
        );
      }
}
    void setState( _onTapped ()) {
}

// Widget youtubeSection = Container(
//   margin: EdgeInsets.only(),
//   width: 200,
//   height: 200,
//   child: FlutterYoutube.playYoutubeVideoByUrl(
//       apiKey: 'AIzaSyCNspU2XMe-zTSUOQSQVHBQtEui-916oBU',
//       videoUrl: 'https://www.youtube.com/watch?v=wQKAbu99drA'),
//       padding: EdgeInsets.all(50),
// );