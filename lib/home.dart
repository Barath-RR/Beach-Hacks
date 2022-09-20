import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:stereo/record.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 65,
          backgroundColor: Colors.white,
          elevation: 15,
          title: Container(
            width: 100,
            child: Image.asset('./assets/images/logo.png'),
          ),
          centerTitle: true,
        ),
        body: Stack(
          children: <Widget>[
            Positioned(
              top: 10,
              left: 30,
              right: 30,
              child: new Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(35),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.blueAccent.shade400,
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                child: Column(
                  children: <Widget>[
                    Text(
                      "Hello Sir what would you like to eat ?",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                      ),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              top: 140,
              left: 30,
              right: 30,
              child: new Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(35),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.blueAccent.shade400,
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                child: Column(
                  children: <Widget>[
                    Text(
                      "Good Morning have a Great Day Ahead !",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                      ),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              top: 260,
              left: 30,
              right: 30,
              child: new Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(35),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.blueAccent.shade400,
                    borderRadius: BorderRadius.all(Radius.circular(10.0))),
                child: Column(
                  children: <Widget>[
                    Text(
                      "Can you please move as we are going to park our vehicle here ?",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                      ),
                      textAlign: TextAlign.center,
                    )
                  ],
                ),
              ),
            ),
            // Positioned(
            //   top: 395,
            //   left: 30,
            //   right: 30,
            //   child: new Container(
            //     margin: EdgeInsets.all(20),
            //     padding: EdgeInsets.all(35),
            //     alignment: Alignment.center,
            //     decoration: BoxDecoration(
            //         color: Colors.blueAccent.shade400,
            //         borderRadius: BorderRadius.all(Radius.circular(10.0))),
            //     child: Column(
            //       children: <Widget>[
            //         Text(
            //           "Hello Sir what would you like to eat ?",
            //           style: TextStyle(
            //             fontSize: 15,
            //             color: Colors.white,
            //             fontWeight: FontWeight.w800,
            //           ),
            //           textAlign: TextAlign.center,
            //         )
            //       ],
            //     ),
            //   ),
            // ),
            Positioned(
              top: 430,
              left: 0,
              right: 0,
              child: Column(
                children: [
                  RaisedButton(
                    child: Text('Start Recording'),
                    color: Colors.deepOrange[600],
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(16.0))),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    },
                  ),
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: 'Home',
              backgroundColor: Colors.blueAccent,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_add_alt_rounded),
              label: 'profile',
              backgroundColor: Colors.blueAccent,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
              backgroundColor: Colors.blueAccent,
            ),
          ],
        ),
      ),
    );
  }
}
