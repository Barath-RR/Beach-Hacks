import 'package:flutter/material.dart';
import 'package:stereo/Screens/settings.dart';
import 'package:stereo/Screens/sticky.dart';

class BottonScreen extends StatefulWidget {
  @override
  _BottonScreenState createState() => _BottonScreenState();
  Widget build(BuildContext context) {
    return MaterialApp(
    );
  }
}

class _BottonScreenState extends State<BottonScreen> {
  @override

  int _currentIndex = 0;
  final List <Widget> _children = [
    Home(),
    Home(),
    SettingsScreen(),
  ];
  void onTappedBar(int index)
  {
    setState(() {
      _currentIndex = index;
    });
  }
  @override

  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar:BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.blue.withOpacity(.60),
        selectedFontSize: 14,
        unselectedFontSize: 14,
        onTap: onTappedBar,
        currentIndex: _currentIndex,

        items: [
          BottomNavigationBarItem(
            title: Text('Blog'),
            icon: Icon(Icons.library_books),
          ),
          BottomNavigationBarItem(
            title: Text('Connect'),
            icon: Icon(Icons.location_on),
          ),
          BottomNavigationBarItem(
            title: Text('Profile'),
            icon: Icon(Icons.account_circle_outlined),
          ),
        ],
      ),
      body: _children.elementAt(_currentIndex),
    );
  }
}