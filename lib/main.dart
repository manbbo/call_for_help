import 'package:flutter/material.dart';

import 'firstpage.dart';
import 'choicespage.dart';

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