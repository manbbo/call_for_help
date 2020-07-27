import 'package:callforhelp/signup.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:callforhelp/custom/clippers.dart';

import 'home.dart';
import 'notifications.dart';
import 'chat.dart';
import 'profile.dart';

import 'pageview.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  bool changed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Stack(
        children: <Widget>[
          new Column(
            children: <Widget>[
              new Image.asset(
                'assets/images/applogo.png',
                width: 190,
                height: 177,
              ),
              new Container(
                height: 27,
              ),
              new Text.rich(TextSpan(
                  text: 'LOGIN',
                  style: TextStyle(
                      fontSize: 25, color: Color.fromRGBO(209, 71, 78, 100)))),
              new Container(
                child: new Text.rich(TextSpan(
                    text: 'User',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ))),
                padding: EdgeInsets.only(right: 240),
              ),
              new Container(
                width: 275,
                height: 32,
                child: new TextFormField(
                  autocorrect: false,
                  enableSuggestions: false,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                            width: 2,
                            style: BorderStyle.solid,
                          ))),
                ),
              ),
              new Container(height: 13),
              new Container(
                child: new Text.rich(TextSpan(
                    text: 'Password',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ))),
                padding: EdgeInsets.only(right: 197),
              ),
              new Container(
                width: 275,
                height: 32,
                child: new TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: BorderSide(
                            width: 2,
                            style: BorderStyle.solid,
                          ))),
                  autocorrect: false,
                  enableSuggestions: false,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                ),
              ),
              new Container(
                height: 16,
              ),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Container(
                    width: 60,
                    height: 16,
                    child: new Switch(
                      activeTrackColor: Color.fromRGBO(242, 174, 193, 1),
                      value: changed,
                      activeColor: Color.fromRGBO(209, 71, 78, 1),
                      onChanged: (bool boleana) => {
                        setState(() {
                          changed = boleana;
                        })
                      },
                    ),
                  ),
                  new Text.rich(TextSpan(
                      text: 'Keep me logged in',
                      style: TextStyle(fontSize: 15, color: Colors.black)))
                ],
              ),
              new ButtonTheme(
                minWidth: 125,
                height: 32,
                child: new RaisedButton(
                  child: Text.rich(TextSpan(
                      text: "Enter",
                      style: TextStyle(fontSize: 24, color: Colors.white))),
                  color: Color.fromRGBO(209, 71, 78, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  onPressed: () => { Navigator.push(context, MaterialPageRoute(builder: (BuildContext build) {
                    // ignore: missing_return
                    return MainPage(pages: <Widget>[
                      // ignore: missing_return
                      Home(title: 'HOME',),
                      Notifications(title: 'NOTIFICATIONS',),
                      ChatPage(title: 'CHATS'),
                      Profile(nickname: '@carolforhelp', name: 'Carol Help Dias',)
                    ]);
                  })) },
                ),
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
          new Stack(
            children: <Widget>[
              new Container(
                padding: EdgeInsets.only(top: (MediaQuery.of(context).size.height/2) +180),
                child: new ClipPath(
                clipper: FirstPageCustomClipper(),
                child: Container(
                  width: 500,
                  height: 287.58,
                  color: Color.fromRGBO(209, 71, 78, 1),
                ),),),
              new Container(
                padding: EdgeInsets.only(top: (MediaQuery.of(context).size.height/2) +230),
                alignment: Alignment.bottomCenter,
                child: new Column(
                  children: <Widget>[
                    new ButtonTheme(
                      minWidth: 260,
                      height: 32,
                      child: new RaisedButton(
                        child: Text.rich(TextSpan(
                            text: "First Access",
                            style: TextStyle(fontSize: 24, color: Colors.black))),
                        color: Color.fromRGBO(242, 174, 193, 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                        onPressed: () => {Navigator.push(context, MaterialPageRoute(
                            builder: (BuildContext build) {
                              return Choice();
                            }
                        ))},
                      ),
                    ),
                    new ButtonTheme(
                      minWidth: 260,
                      height: 32,
                      child: new RaisedButton(
                        child: Text.rich(TextSpan(
                            text: "Visitor",
                            style: TextStyle(fontSize: 24, color: Colors.black))),
                        color: Color.fromRGBO(242, 174, 193, 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                        onPressed: () => {},
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      )
    );
  }
}
