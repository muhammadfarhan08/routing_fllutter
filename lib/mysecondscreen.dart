import 'package:flutter/material.dart';
import 'myhomepage.dart';
import 'mythird.dart';

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
        title: Text("Layar Kedua"),
        backgroundColor: Colors.deepOrange,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
        ],
      ),
      body: Column(children: <Widget>[
        Image.network(
            'https://www.worldofghibli.id/wp-content/uploads/2020/01/gambar-jeruk-png.jpg'),
        Text(
          'SecondScreen : Muhammad Farhan',
          style: TextStyle(fontSize: 16, fontFamily: "Serif", height: 2.0),
        ),
        RaisedButton(
          child: Text(
            'Layar Pertama',
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
          color: Colors.white,
          child: Text("Layar Ketiga?"),
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
