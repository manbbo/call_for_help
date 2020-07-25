import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  String title;
  Login ({Key key, this.title}) : super(key: key);
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Stack(
        children: <Widget>[
          new Container(
            child: Text.rich(new TextSpan(text: widget.title)),
            alignment: Alignment.center,
          ),
          new Container(
            //child: ,
          )
        ],
      ),
    );
  }
}