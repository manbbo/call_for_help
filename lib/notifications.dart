import 'dart:ui';

import 'package:flutter/material.dart';

class Notifications extends StatefulWidget{
  String title;
  Notifications({Key key, this.title}) : super(key: key);
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    final List<String> entries = ['Manaus-AM', 'Cacique is cured!', 'Palmas-TO','Doação de roupas'],
        subtitles=['The community needs 15KG of rice', "Donated medication helped on cacique's cure", 'Community needs help with medication for Dengue','The CostureAqui retailer donated cloths for the Community X'],
        images = ['5', '4', '6', '3'];
    final List<int> colorCodes = <int>[40, 40, 40,40];

    // TODO: implement build
    return Scaffold(
      body: new Stack(
        children: <Widget>[
          new Positioned(
            child: Text.rich(new TextSpan(text: widget.title, style: TextStyle(
                fontSize: 35,
                color: Color.fromRGBO(209, 71, 78, 1)
            ))),
            top: 50,
            left: (MediaQuery.of(context).size.width/5),
          ),
          new Positioned(
            top: 100,
            left: 15,
            child: new Container(
              height: 3,
              width: MediaQuery.of(context).size.width-30,
              decoration: BoxDecoration(
                color: Color.fromRGBO(226, 227, 219, 1),
              ),
            ),
          ),
          new Container(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height/8, left: 0),
            height: MediaQuery.of(context).size.height - 100,
            child: ListView.separated(
              itemCount: entries.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 97, //altura
                  color: Colors.amber[colorCodes[index]],
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new Container(
                        child: Image.asset('assets/images/community${images[index]}.png'),
                        width: 100,
                        height: 56,
                        alignment: Alignment.topCenter,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Container(
                            width: MediaQuery.of(context).size.width/2,
                            child: Text(' ${entries[index]}', style: TextStyle(fontSize: 20),
                              softWrap: true, textAlign: TextAlign.left,),
                          ),
                          new Container(
                            width: MediaQuery.of(context).size.width/2,
                            child: Text(' ${subtitles[index]}', style: TextStyle(color: Colors.black38, ),
                            softWrap: true, textAlign: TextAlign.left,),
                          )
                        ],
                      ),
                      new Container(
                        child: IconButton(
                          color: Color.fromRGBO(242, 174, 193, 1),
                          onPressed: () => {},
                          icon: Icon(Icons.more_vert),
                        ),
                      )
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                );
              },

              separatorBuilder: (BuildContext context, int index) => const Divider(),
            ),
          )
        ],
      ),
    );
  }
}