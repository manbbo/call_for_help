import 'package:callforhelp/mapping.dart';
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
      //home: Mapping(state: 0,)
      //home: VolunteerPage()
      //home: CommunityPage(),
      //home: ResearcherPage(),
      //home: EnterprisePage()
      home: FirstPage()
      //home: cadastroVolunPage()
        //home: cadastroVolunPage()
      //home: cadastroComunPage()
      //home: cadastroPesqPage()
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