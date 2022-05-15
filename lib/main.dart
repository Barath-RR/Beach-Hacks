import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: <Widget>[
      new Container(
          decoration: new BoxDecoration(
        image: new DecorationImage(
          image: new AssetImage("./assets/images/bg.png"),
          fit: BoxFit.cover,
        ),
      )),
      Positioned(
        top: 150,
        left: 0,
        right: 0,
        child: new Container(
          child: Column(children: <Widget>[
            Image.asset("./assets/images/logo.png", width: 300, height: 300),
          ]),
        ),
      ),
      Positioned(
        top: 300,
        left: 0,
        right: 0,
        child: new Container(
          child: Column(children: <Widget>[
            Image.asset('./assets/images/Whistle.png', width: 350, height: 350),
          ]),
        ),
      ),
      Positioned(
          top: 650,
          left: 0,
          right: 0,
          child: new Container(
              child: IconButton(
            icon: Image.asset('./assets/images/button.png'),
            iconSize: 150,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Home()),
              );
            },
          ))),
    ]));
  }
}
