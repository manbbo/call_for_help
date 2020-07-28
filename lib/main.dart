import 'package:callforhelp/chat.dart';
import 'package:callforhelp/home.dart';
import 'package:callforhelp/mapping.dart';
import 'package:callforhelp/notifications.dart';
import 'package:callforhelp/pageview.dart';
import 'package:callforhelp/profile.dart';
import 'package:callforhelp/sospage.dart';
import 'package:flutter/material.dart';

import 'firstpage.dart';
import 'choicespage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Call for Help',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Hammersmith'
      ),
      home: FirstPage(),
      //home: Mapping(state: 0,)
      //home: VolunteerPage()
      //home: CommunityPage(),
      //home: ResearcherPage(),
      //home: EnterprisePage()
      //home: FirstPage()
      //home: cadastroVolunPage()
        //home: cadastroVolunPage()
      //home: cadastroComunPage()
      //home: cadastroPesqPage()

    );
  }
}