import 'package:flutter/material.dart';
import 'mysecondscreen.dart';
import 'mythird.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
        title: Text("Layar Pertama"),
        backgroundColor: Colors.deepOrange,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
        ],
      ),
      body: Column(children: <Widget>[
        Image.network(
            'https://www.jawapos.com/wp-content/uploads/2020/01/Jeruk-Mandarin-Pixabay.jpg'),
        Text(
          'HomeScreen : Muhammad Farhan',
          style: TextStyle(fontSize: 16, fontFamily: "Serif", height: 2.0),
        ),
        RaisedButton(
          child: Text(
            'Layar Kedua?',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          color: new Color(0xFFFF5722),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondScreen()),
            );
          },
        ),
        RaisedButton(
          color: Colors.deepOrange,
          child: Text(
            "Layar Ketiga",
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ThirdScreen()),
            );
          },
        ),
      ]),
    );
  }
}
