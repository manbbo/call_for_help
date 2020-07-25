import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  List<Widget> pages;
  MainPage({this.pages, Key key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _index = 0;

  void _onItemTapped(int index) {
    setState(() {
      _index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: widget.pages.elementAt(_index),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('HOME'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
              title: Text('NOTIFICATIONS')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble),
              title: Text('CHAT')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
              title: Text('PROFILE')
          ),
        ],
        onTap: _onItemTapped,
        currentIndex: _index,
        selectedItemColor: Colors.white,
        backgroundColor: Colors.black,
      ),
    );
  }
}
