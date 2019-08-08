import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:flutter_youtube/flutter_youtube.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var youtube = new FlutterYoutube();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: ListView(
          children: <Widget>[
            headderSection,
            titleSection,
            buttonSection,
            courseSection,
            youtubeSection
          ],
        ),
      ),
    );
  }
}

Widget headderSection = Image.network(
  'https://i.ytimg.com/vi/jmj9qW8Gkzw/maxresdefault.jpg',
);

Widget youtubeSection = Container(
  child: FlutterYoutube.playYoutubeVideoByUrl(
      apiKey: 'AIzaSyCNspU2XMe-zTSUOQSQVHBQtEui-916oBU',
      videoUrl: 'https://www.youtube.com/watch?v=wQKAbu99drA'),
);

Widget titleSection = Padding(
  padding: EdgeInsets.all(50),
  child: Row(
    children: <Widget>[
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Title",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(
              "Detail",
              style: TextStyle(color: Colors.grey[500]),
            ),
          ],
        ),
      ),
      Icon(
        Icons.thumb_up,
        color: Colors.blue,
      ),
      Container(
        margin: EdgeInsets.only(left: 8),
        child: Text("99"),
      )
    ],
  ),
);

Widget buttonSection = Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: <Widget>[
    _buildButtomColum(icon: Icons.thumb_up, label: "Like"),
    _buildButtomColum(icon: Icons.comment, label: "comment"),
    _buildButtomColum(icon: Icons.share, label: "Share")
  ],
);

Column _buildButtomColum({IconData icon, String label}) {
  var icColor = Colors.grey.shade500;
  return Column(
    children: <Widget>[
      Icon(
        icon,
        color: icColor,
      ),
      Container(
        margin: EdgeInsets.only(top: 8),
        child: Text(
          label,
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 13, color: icColor),
        ),
      ),
    ],
  );
}

Widget courseSection = Container(
  margin: EdgeInsets.only(top: 70),
  padding: EdgeInsets.all(8),
  child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Padding(
        padding: EdgeInsets.all(8),
        child: Text("Workpoint"),
      ),
      Container(
        height: 100,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            _buildCardListView(
              url:
                  'https://daily.rabbitstatic.com/wp-content/uploads/2017/02/%E0%B9%84%E0%B8%82%E0%B8%82%E0%B9%89%E0%B8%AD%E0%B8%AA%E0%B8%87%E0%B8%AA%E0%B8%B1%E0%B8%A2-%E0%B9%80%E0%B8%A1%E0%B8%B7%E0%B9%88%E0%B8%AD%E0%B9%81%E0%B8%A1%E0%B8%A7%E0%B8%88%E0%B9%89%E0%B8%AD%E0%B8%87%E0%B8%A1%E0%B8%AD%E0%B8%87%E0%B8%9A%E0%B8%B2%E0%B8%87%E0%B8%AA%E0%B8%B4%E0%B9%88%E0%B8%87%E0%B8%97%E0%B8%B5%E0%B9%88%E0%B8%A7%E0%B9%88%E0%B8%B2%E0%B8%87%E0%B9%80%E0%B8%9B%E0%B8%A5%E0%B9%88%E0%B8%B2-%E0%B8%A1%E0%B8%B1%E0%B8%99%E0%B9%80%E0%B8%AB%E0%B9%87%E0%B8%99%E0%B8%9C%E0%B8%B5%E0%B8%AB%E0%B8%A3%E0%B8%B7%E0%B8%AD%E0%B9%80%E0%B8%AB%E0%B9%87%E0%B8%99%E0%B8%AD%E0%B8%B0%E0%B9%84%E0%B8%A3.jpg',
            ),
            _buildCardListView(
              url:
                  'https://scontent-fbkk5-7.us-fbcdn.net/v1/t.1-48/1426l78O9684I4108ZPH0J4S8_842023153_K1DlXQOI5DHP/dskvvc.qpjhg.xmwo/w/data/954/954204-img.rqq1u6.18rn6.jpg',
            ),
            _buildCardListView(
              url:
                  'https://img.kaidee.com/prd/20190711/348726922/b/fbdc7c6e-d217-4b83-8f46-acaf47df5220.jpg',
            ),
            _buildCardListView(
              url:
                  'https://s3-ap-southeast-1.amazonaws.com/wpimage.shopspotapp.com/wp-content/uploads/2017/08/08120504/20480018_1123379674464780_8404745370706867972_n.jpg',
            )
          ],
        ),
      ),
    ],
  ),
);

Card _buildCardListView({String url}) {
  return Card(
    child:
        FadeInImage.memoryNetwork(placeholder: kTransparentImage, image: url),
  );
}
