import 'package:flutter/material.dart';
import 'package:flutter_youtube/flutter_youtube.dart';

void main() => runApp(MyApp());
var youtube = new FlutterYoutube();

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _currentIndex = 0;

  List<Widget> _tablist = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.blue[900]),
      home: Scaffold(
        body: ListView(
          children: <Widget>[
            headderSection,
            vidioSection,
            titlelistSection,
            listTextSection,
            textfooterSection,
            menuIconSection,
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (currentIndex) {
            _currentIndex = currentIndex;
            //TODO:update the content/
          },
          items: [
            BottomNavigationBarItem(
              title: Text(""),
              icon: Icon(
                Icons.home,
                color: Colors.grey,
                size: 30,
              ),
            ),
            BottomNavigationBarItem(
              title: Text(""),
              icon: Icon(
                Icons.play_circle_outline,
                color: Colors.grey,
                size: 30,
              ),
            ),
            BottomNavigationBarItem(
              title: Text(""),
              icon: Icon(
                Icons.tv,
                color: Colors.grey,
                size: 30,
              ),
            ),
            BottomNavigationBarItem(
              title: Text(""),
              icon: Icon(
                Icons.date_range,
                color: Colors.grey,
                size: 30,
              ),
            ),
            BottomNavigationBarItem(
                title: Text("Additional"),
                icon: Icon(
                  Icons.drag_handle,
                  color: Colors.grey,
                  size: 30,
                ))
          ],
        ),
      ),
    );
  }
}

Widget headderSection = new Stack(children: <Widget>[Container(
  decoration: new BoxDecoration(
    image: new DecorationImage(
      image: new AssetImage('assets/images/header.png'),
      fit: BoxFit.cover,
    ),
  ),
),],); 
Widget vidioSection = Container(
  height: 150,
  color: Colors.white,
);
Widget titlelistSection = Container(
  height: 150,
  color: Colors.indigo[900],
);
Widget listTextSection = Container(
  height: 150,
  color: Colors.indigo[600],
);
Widget textfooterSection = Container(
  height: 150,
  color: Colors.black,
);
Widget menuIconSection = Container(
  height: 150,
  color: Colors.green,
);
