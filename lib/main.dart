import 'package:flutter/material.dart';

import 'firstpage.dart';
import 'home.dart';
import 'notifications.dart';
import 'chat.dart';
import 'profile.dart';

import 'pageview.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FirstPage()
      //MainPage(
        //pages: <Widget>[Home(title: 'HOMEPAGE',),
          //Notifications(),
          //ChatPage(),
         // Profile(nickname: '@carol_macedo_220', name: 'Carol',),
       // ],
      //),
    );
  }
}