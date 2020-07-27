import 'package:callforhelp/pageview.dart';
import 'package:callforhelp/profile.dart';
import 'package:flutter/material.dart';
import 'package:callforhelp/custom/clippers.dart';

import 'chat.dart';
import 'home.dart';
import 'notifications.dart';

class CommunityPage extends StatefulWidget {
  @override
  _CommunityPageState createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage> {
  bool changed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              ClipPath(
                child: new Container(
                  height: 230,
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.center,
                  color: Color(0xFFF8BBD0),
                  child: Text('Community',
                      style: TextStyle(
                          color: Color.fromRGBO(209, 71, 78, 1),
                          fontSize: 40
                      ))
                ),
                clipper: ChoicesClipper(),
              ),
              new Container(height: 15),
              new Container(
                padding: EdgeInsets.only(top: (MediaQuery.of(context).size.height/8), left: (MediaQuery.of(context).size.width/30)),
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width-30,
                      padding: EdgeInsets.only(top: 30,
                        bottom: 4,
                        right: 1, ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(
                            width:MediaQuery.of(context).size.width/1.2,
                            alignment: Alignment.center,
                            height: 30,
                            padding: EdgeInsets.only(
                              top: 0, left: 0, bottom: 4, right: 50,
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(50)
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 50,
                                  )
                                ]
                            ),
                            child: TextField(
                                decoration: InputDecoration(
                                  icon: Icon(Icons.contact_mail, color: Colors.grey,),
                                  hintText:'CPF',

                                )
                            ),
                          ),
                          new Container(height: 15),
                          Container(
                            width:MediaQuery.of(context).size.width/1.2,
                            height: 30,
                            padding: EdgeInsets.only(
                              top: 0, left: 0, bottom: 4,right: 50,
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(50)
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 50,
                                  )
                                ]
                            ),
                            child: TextField(
                                decoration: InputDecoration(
                                  icon: Icon(Icons.person_outline, color: Colors.grey,),
                                  hintText:'Name',

                                )
                            ),
                          ),
                          Container(
                            width:MediaQuery.of(context).size.width/1.2,
                            height: 30,
                            margin: EdgeInsets.only(top: 25),
                            padding: EdgeInsets.only(
                              top: 0, left: 0, bottom: 4,right: 50,
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(50)
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 50,
                                  )
                                ]
                            ),

                            child: TextField(
                                decoration: InputDecoration(
                                  icon: Icon(Icons.local_phone, color: Colors.grey,),
                                  hintText:'Phone',

                                )
                            ),
                          ),
                          new Container(height: 15),
                          Container(
                            width:MediaQuery.of(context).size.width/1.2,
                            height: 30,
                            padding: EdgeInsets.only(
                              top: 0, left: 0, bottom: 4, right: 50,
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(50)
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 50,
                                  )
                                ]
                            ),
                            child: TextField(
                                decoration: InputDecoration(
                                  icon: Icon(Icons.location_on, color: Colors.grey,),
                                  hintText:'Address',

                                )
                            ),
                          ),
                          new Container(height: 15),
                          Container(
                            width:MediaQuery.of(context).size.width/1.2,
                            height: 30,
                            padding: EdgeInsets.only(
                              top: 0, left: 0, bottom: 4, right: 50,
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(50)
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 50,
                                  )
                                ]
                            ),
                            child: TextField(
                                decoration: InputDecoration(
                                  icon: Icon(Icons.description, color: Colors.grey,),
                                  hintText:'Description',
                                )
                            ),
                          ),
                          new Container(height: 15),
                          Container(
                            width:MediaQuery.of(context).size.width/1.2,
                            height: 30,
                            padding: EdgeInsets.only(
                              top: 0, left: 0, bottom: 4, right: 50,
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(50)
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 50,
                                  )
                                ]
                            ),
                            child: TextField(
                                decoration: InputDecoration(
                                  icon: Icon(Icons.vpn_key, color: Colors.grey,),
                                  hintText:'Password',

                                )
                            ),
                          ),
                          new Container(height: 15),
                          Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 12,
                                    right: 32
                                ),
                                child: Text('Already have an account?',
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              )
                          ),
                          new ButtonTheme(
                            minWidth: 260,
                            height: 32,
                            child: new RaisedButton(
                              child: Text.rich(TextSpan(
                                  text: "Sign-up".toUpperCase(),
                                  style: TextStyle(fontSize: 20, color: Colors.white))),
                              color: Color.fromRGBO(209, 71, 78, 1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              ),
                              onPressed: () => { Navigator.push(context, MaterialPageRoute(builder: (BuildContext build) {
                                return MainPage(pages: <Widget>[
                                  // ignore: missing_return
                                  Home(title: 'HOME',),
                                  Notifications(title: 'NOTIFICATIONS',),
                                  ChatPage(title: 'CHATS'),
                                  Profile(nickname: '@carolforhelp', name: 'Carol Help Dias',)
                                ]);
                              }))},
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              new Container(
                padding: EdgeInsets.only(top: 30),
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.topLeft,
                child: new IconButton(icon: Icon(Icons.arrow_back_ios
                ), onPressed: () => Navigator.pop(context)),
              ),
            ],
          ),
        )
    );
  }
}

class EnterprisePage extends StatefulWidget {
  @override
  _EnterprisePageState createState() => _EnterprisePageState();
}

class _EnterprisePageState extends State<EnterprisePage> {
  bool changed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: Stack(
            children: <Widget>[
              ClipPath(
                child: new Container(
                    height: 230,
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.center,
                    color: Color(0xFFF8BBD0),
                    child: Text('Enterprise',
                        style: TextStyle(
                            color: Color.fromRGBO(209, 71, 78, 1),
                            fontSize: 40
                        ))
                ),
                clipper: ChoicesClipper(),
              ),
              new Container(height: 15),
              new Container(
                padding: EdgeInsets.only(top: (MediaQuery.of(context).size.height/8), left: (MediaQuery.of(context).size.width/30)),
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width-30,
                      padding: EdgeInsets.only(top: 30, left: 0, bottom: 4, right: 1, ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(
                            width:MediaQuery.of(context).size.width/1.2,
                            height: 30,
                            padding: EdgeInsets.only(
                              top: 0, left: 0, bottom: 4, right: 50,
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(50)
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 50,
                                  )
                                ]
                            ),
                            child: TextField(
                                decoration: InputDecoration(
                                  icon: Icon(Icons.person_outline, color: Colors.grey,),
                                  hintText:'Name',
                                )
                            ),
                          ),
                          new Container(height: 15),
                          Container(
                            width:MediaQuery.of(context).size.width/1.2,
                            height: 30,
                            padding: EdgeInsets.only(
                              top: 0, left: 0, bottom: 4,right: 50,
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(50)
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 50,
                                  )
                                ]
                            ),
                            child: TextField(
                                decoration: InputDecoration(
                                  icon: Icon(Icons.email, color: Colors.grey,),
                                  hintText:'E-mail',

                                )
                            ),
                          ),
                          Container(
                            width:MediaQuery.of(context).size.width/1.2,
                            height: 30,
                            margin: EdgeInsets.only(top: 25),
                            padding: EdgeInsets.only(
                              top: 0, left: 0, bottom: 4,right: 50,
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(50)
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 50,
                                  )
                                ]
                            ),

                            child: TextField(
                                decoration: InputDecoration(
                                  icon: Icon(Icons.local_phone, color: Colors.grey,),
                                  hintText:'Phone',

                                )
                            ),
                          ),
                          new Container(height: 15),
                          Container(
                            width:MediaQuery.of(context).size.width/1.2,
                            height: 30,
                            padding: EdgeInsets.only(
                              top: 0, left: 0, bottom: 4, right: 50,
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(50)
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 50,
                                  )
                                ]
                            ),
                            child: TextField(
                                decoration: InputDecoration(
                                  icon: Icon(Icons.school, color: Colors.grey,),
                                  hintText:'Institution',

                                )
                            ),
                          ),
                          new Container(height: 15),
                          Container(
                            width:MediaQuery.of(context).size.width/1.2,
                            height: 30,
                            padding: EdgeInsets.only(
                              top: 0, left: 0, bottom: 4, right: 50,
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(50)
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 50,
                                  )
                                ]
                            ),
                            child: TextField(
                                decoration: InputDecoration(
                                  icon: Icon(Icons.contacts, color: Colors.grey,),
                                  hintText:'Registration Number',

                                )
                            ),
                          ),
                          new Container(height: 15),
                          Container(
                            width:MediaQuery.of(context).size.width/1.2,
                            height: 30,
                            padding: EdgeInsets.only(
                              top: 0, left: 0, bottom: 4, right: 50,
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(50)
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 50,
                                  )
                                ]
                            ),
                            child: TextField(
                                decoration: InputDecoration(
                                  icon: Icon(Icons.vpn_key, color: Colors.grey,),
                                  hintText:'Password',

                                )
                            ),
                          ),
                          new Container(height: 15),
                          Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 12,
                                    right: 32
                                ),
                                child: Text('Already have an account?',
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              )
                          ),
                          new ButtonTheme(
                            minWidth: 260,
                            height: 32,
                            child: new RaisedButton(
                              child: Text.rich(TextSpan(
                                  text: "Sign-up".toUpperCase(),
                                  style: TextStyle(fontSize: 20, color: Colors.white))),
                              color: Color.fromRGBO(209, 71, 78, 1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              ),
                              onPressed: () => { Navigator.push(context, MaterialPageRoute(builder: (BuildContext build) {
                                return MainPage(pages: <Widget>[
                                  // ignore: missing_return
                                  Home(title: 'HOME',),
                                  Notifications(title: 'NOTIFICATIONS',),
                                  ChatPage(title: 'CHATS'),
                                  Profile(nickname: '@carolforhelp', name: 'Carol Help Dias',)
                                ]);
                              }))},
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              new Container(
                padding: EdgeInsets.only(top: 30),
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.topLeft,
                child: new IconButton(icon: Icon(Icons.arrow_back_ios
                ), onPressed: () => Navigator.pop(context)),
              ),
            ],
          ),
        )
    );
  }
}

class ResearcherPage extends StatefulWidget {
  @override
  _ResearcherPageState createState() => _ResearcherPageState();
}

class _ResearcherPageState extends State<ResearcherPage> {
  bool changed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: Stack(
            children: <Widget>[
          ClipPath(
          child: new Container(
              height: 230,
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.center,
              color: Color(0xFFF8BBD0),
              child: Text('Researcher',
                  style: TextStyle(
                      color: Color.fromRGBO(209, 71, 78, 1),
                      fontSize: 40
                  ))
          ),
          clipper: ChoicesClipper(),
        ),
              new Container(height: 15),
              new Container(
                  padding: EdgeInsets.only(top: (MediaQuery.of(context).size.height/8), left: (MediaQuery.of(context).size.width/30)),
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width-30,
                      padding: EdgeInsets.only(top: 30, left: 0, bottom: 4, right: 1, ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(
                            width:MediaQuery.of(context).size.width/1.2,
                            height: 30,
                            padding: EdgeInsets.only(
                              top: 0, left: 0, bottom: 4, right: 50,
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(50)
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 50,
                                  )
                                ]
                            ),
                            child: TextField(
                                decoration: InputDecoration(
                                  icon: Icon(Icons.person_outline, color: Colors.grey,),
                                  hintText:'Name',

                                )
                            ),
                          ),
                          new Container(height: 15),
                          Container(
                            width:MediaQuery.of(context).size.width/1.2,
                            height: 30,
                            padding: EdgeInsets.only(
                              top: 0, left: 0, bottom: 4,right: 50,
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(50)
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 50,
                                  )
                                ]
                            ),
                            child: TextField(
                                decoration: InputDecoration(
                                  icon: Icon(Icons.email, color: Colors.grey,),
                                  hintText:'E-mail',

                                )
                            ),
                          ),
                          Container(
                            width:MediaQuery.of(context).size.width/1.2,
                            height: 30,
                            margin: EdgeInsets.only(top: 25),
                            padding: EdgeInsets.only(
                              top: 0, left: 0, bottom: 4,right: 50,
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(50)
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 50,
                                  )
                                ]
                            ),

                            child: TextField(
                                decoration: InputDecoration(
                                  icon: Icon(Icons.local_phone, color: Colors.grey,),
                                  hintText:'Phone',

                                )
                            ),
                          ),
                          new Container(height: 15),
                          Container(
                            width:MediaQuery.of(context).size.width/1.2,
                            height: 30,
                            padding: EdgeInsets.only(
                              top: 0, left: 0, bottom: 4, right: 50,
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(50)
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 50,
                                  )
                                ]
                            ),
                            child: TextField(
                                decoration: InputDecoration(
                                  icon: Icon(Icons.school, color: Colors.grey,),
                                  hintText:'Institution',

                                )
                            ),
                          ),
                          new Container(height: 15),
                          Container(
                            width:MediaQuery.of(context).size.width/1.2,
                            height: 30,
                            padding: EdgeInsets.only(
                              top: 0, left: 0, bottom: 4, right: 50,
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(50)
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 50,
                                  )
                                ]
                            ),
                            child: TextField(
                                decoration: InputDecoration(
                                  icon: Icon(Icons.contacts, color: Colors.grey,),
                                  hintText:'Registration Number',

                                )
                            ),
                          ),
                          new Container(height: 15),
                          Container(
                            width:MediaQuery.of(context).size.width/1.2,
                            height: 30,
                            padding: EdgeInsets.only(
                              top: 0, left: 0, bottom: 4, right: 50,
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(50)
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 50,
                                  )
                                ]
                            ),
                            child: TextField(
                                decoration: InputDecoration(
                                  icon: Icon(Icons.vpn_key, color: Colors.grey,),
                                  hintText:'Password',

                                )
                            ),
                          ),
                          new Container(height: 15),
                          Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 12,
                                    right: 32
                                ),
                                child: Text('Already have an account?',
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              )
                          ),
                          new Container(height: 15),
                          new ButtonTheme(
                            minWidth: 260,
                            height: 32,
                            child: new RaisedButton(
                              child: Text.rich(TextSpan(
                                  text: "Sign-up".toUpperCase(),
                                  style: TextStyle(fontSize: 20, color: Colors.white))),
                              color: Color.fromRGBO(209, 71, 78, 1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              ),
                              onPressed: () => { Navigator.push(context, MaterialPageRoute(builder: (BuildContext build) {
                                return MainPage(pages: <Widget>[
                                  // ignore: missing_return
                                  Home(title: 'HOME',),
                                  Notifications(title: 'NOTIFICATIONS',),
                                  ChatPage(title: 'CHATS'),
                                  Profile(nickname: '@carolforhelp', name: 'Carol Help Dias',)
                                ]);
                              }))},
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ),
              new Container(
                padding: EdgeInsets.only(top: 30),
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.topLeft,
                child: new IconButton(icon: Icon(Icons.arrow_back_ios
                ), onPressed: () => Navigator.pop(context)),
              ),
            ],
          ),
        )
    );
  }
}

class VolunteerPage extends StatefulWidget {
  @override
  _VolunteerPageState createState() => _VolunteerPageState();
}

class _VolunteerPageState extends State<VolunteerPage> {
  bool changed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          child: Stack(
            children: <Widget>[
              ClipPath(
                child: new Container(
                    height: 230,
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.center,
                    color: Color(0xFFF8BBD0),
                    child: Text('Volunteer',
                        style: TextStyle(
                            color: Color.fromRGBO(209, 71, 78, 1),
                            fontSize: 40
                        ))
                ),
                clipper: ChoicesClipper(),
              ),
              new Container(height: 15),
              new Container(
                padding: EdgeInsets.only(top: (MediaQuery.of(context).size.height/8), left: (MediaQuery.of(context).size.width/30)),
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width-30,
                      padding: EdgeInsets.only(top: 30, left: 0, bottom: 4, right: 1, ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(
                            width:MediaQuery.of(context).size.width/1.2,
                            height: 40,
                            padding: EdgeInsets.only(
                              top: 0, left: 0, bottom: 4, right: 50,
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(50)
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 50,
                                  )
                                ]
                            ),
                            child: TextField(
                                decoration: InputDecoration(
                                  icon: Icon(Icons.contact_mail, color: Colors.grey,),
                                  hintText:'CPF',

                                )
                            ),
                          ),
                          new Container(height: 13),
                          Container(
                            width:MediaQuery.of(context).size.width/1.2,
                            height: 40,
                            padding: EdgeInsets.only(
                              top: 0, left: 0, bottom: 4,right: 50,
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(50)
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 50,
                                  )
                                ]
                            ),
                            child: TextField(
                                decoration: InputDecoration(
                                  icon: Icon(Icons.person_outline, color: Colors.grey,),
                                  hintText:'Name',

                                )
                            ),
                          ),
                          new Container(height:0),
                          Container(
                            width:MediaQuery.of(context).size.width/1.2,
                            height: 40,
                            margin: EdgeInsets.only(top: 25),
                            padding: EdgeInsets.only(
                              top: 0, left: 0, bottom: 4,right: 50,
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(50)
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 50,
                                  )
                                ]
                            ),

                            child: TextField(
                                decoration: InputDecoration(
                                  icon: Icon(Icons.email, color: Colors.grey,),
                                  hintText:'E-mail',

                                )
                            ),
                          ),
                          new Container(height: 13),
                          Container(
                            width:MediaQuery.of(context).size.width/1.2,
                            height: 40,
                            padding: EdgeInsets.only(
                              top: 0, left: 0, bottom: 4, right: 50,
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(50)
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 50,
                                  )
                                ]
                            ),
                            child: TextField(
                                decoration: InputDecoration(
                                  icon: Icon(Icons.local_phone, color: Colors.grey,),
                                  hintText:'Phone',

                                )
                            ),
                          ),
                          new Container(height: 13),
                          Container(
                            width:MediaQuery.of(context).size.width/1.2,
                            height: 40,
                            padding: EdgeInsets.only(
                              top: 0, left: 0, bottom: 4, right: 50,
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(50)
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 50,
                                  )
                                ]
                            ),
                            child: TextField(
                                decoration: InputDecoration(
                                  icon: Icon(Icons.school, color: Colors.grey,),
                                  hintText:'Institution',

                                )
                            ),
                          ),
                          new Container(height: 13),
                          Container(
                            width:MediaQuery.of(context).size.width/1.2,
                            height: 30,
                            padding: EdgeInsets.only(
                              top: 0, left: 0, bottom: 4, right: 50,
                            ),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.all(
                                    Radius.circular(50)
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 50,
                                  )
                                ]
                            ),
                            child: TextField(
                                decoration: InputDecoration(
                                  icon: Icon(Icons.vpn_key, color: Colors.grey,),
                                  hintText:'Password',

                                )
                            ),
                          ),
                          Align(
                              alignment: Alignment.centerRight,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 12,
                                    right: 32
                                ),
                                child: Text('Forgot password?',
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              )
                          ),
                          new Container(height: 13),
                          new ButtonTheme(
                            minWidth: 260,
                            height: 32,
                            child: new RaisedButton(
                              child: Text.rich(TextSpan(
                                  text: "Sign-up".toUpperCase(),
                                  style: TextStyle(fontSize: 20, color: Colors.white))),
                              color: Color.fromRGBO(209, 71, 78, 1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              ),
                              onPressed: () => { Navigator.push(context, MaterialPageRoute(builder: (BuildContext build) {
                                return MainPage(pages: <Widget>[
                                  // ignore: missing_return
                                  Home(title: 'HOME',),
                                  Notifications(title: 'NOTIFICATIONS',),
                                  ChatPage(title: 'CHATS'),
                                  Profile(nickname: '@carolforhelp', name: 'Carol Help Dias',)
                                ]);
                              }))},
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              new Container(
                padding: EdgeInsets.only(top: 30),
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.topLeft,
                child: new IconButton(icon: Icon(Icons.arrow_back_ios
                ), onPressed: () => Navigator.pop(context)),
              ),
            ],
          ),
        )
    );
  }
}
