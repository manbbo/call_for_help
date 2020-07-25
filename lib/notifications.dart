import 'package:flutter/material.dart';

class Notifications extends StatefulWidget{
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: new Stack(
        children: <Widget>[
          new Container(
            child: Text.rich(new TextSpan(text: 'widget.title')),
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