import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wi_app/pages/settings.dart';
import 'package:wi_app/pages/profile.dart';
import 'package:wi_app/pages/match.dart';
import 'package:wi_app/pages/chat.dart';

void main() => runApp(MaterialApp(
      title: 'WorkInter',
      home: Main(),
    ));

class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  int _selectedIndex = 2;
  List<Widget> _widgetOptions = <Widget>[
    Settings(),
    ProfilePage(),
    Match(),
    Chat()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Center(child: _widgetOptions.elementAt(_selectedIndex))),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
        unselectedItemColor: Colors.grey.shade600,
        unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "Profile",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Match",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: "Chat",
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}