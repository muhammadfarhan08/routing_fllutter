import 'package:flutter/material.dart';
import 'myhomepage.dart';
import 'mysecondscreen.dart';

class ThirdScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
        title: Text("Layar Ketiga"),
        backgroundColor: Colors.deepOrange,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
        ],
      ),
      body: Column(children: <Widget>[
        Image.network(
            'https://www.wallpapertip.com/wmimgs/5-50846_fruit-wallpaper-full-hd-orange-fruit-background-hd.jpg'),
        Text(
          'ThirdScreen :Muhammad Farhan',
          style: TextStyle(fontSize: 16, fontFamily: "Serif", height: 2.0),
        ),
        RaisedButton(
          child: Text(
            'Layar Pertama?',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          color: new Color(0xFFFF5722),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MainScreen()),
            );
          },
        ),
        RaisedButton(
          color: Colors.deepOrange,
          child: Text("Layar Kedua?"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondScreen()),
            );
          },
        ),
      ]),
    );
  }
}
