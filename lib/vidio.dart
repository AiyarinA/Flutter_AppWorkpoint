import 'package:flutter/material.dart';

class MyApp  extends StatefulWidget {
  final dtail;
  const 
  @override
  _videoDetailState createState() => _videoDetailState();
}

class _videoDetailState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        children: <Widget>[
          Text("Hello")
        ],
      ),
    ),
      
    );
  }
}



