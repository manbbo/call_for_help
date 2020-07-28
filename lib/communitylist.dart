import 'dart:ui';

import 'package:callforhelp/sospage.dart';
import 'package:callforhelp/sponsorship_profile.dart';
import 'package:flutter/material.dart';

class CommunitiesList extends StatefulWidget{
  String title;
  BuildContext context;
  CommunitiesList({Key key, this.title, this.context}) : super(key: key);
  @override
  _CommunitiesListState createState() => _CommunitiesListState();
}

class _CommunitiesListState extends State<CommunitiesList> {
  final List<String> entries = ['Comunity Vanzega', 'Community Alcantra', 'Community Palmas','Community Roraima'],
      images = ['5', '4', '6', '3'];
  final List<Widget> subtitles=[
    new Row(
      children: <Widget>[
        new Container(
          width: 40,
          height: 40,
          child: Image.asset('assets/images/sanitation.png'),
        ),
        new Container(
          width: 40,
          height: 40,
          child: Image.asset('assets/images/food.png'),
        ),
        new Container(
          width: 40,
          height: 40,
          child: Image.asset('assets/images/health.png'),
        ),
      ],
    ),
    new Container(
      width: 40,
      height: 40,
      child: Image.asset('assets/images/health.png'),
    ),
    new Row(children: <Widget>[
      new Container(
        width: 40,
        height: 40,
        child: Image.asset('assets/images/sanitation.png'),
      ),
      new Container(
        width: 40,
        height: 40,
        child: Image.asset('assets/images/food.png'),
      ),
    ],),
    new Container(
      width: 40,
      height: 40,
      child: Image.asset('assets/images/food.png'),
    ),
  ];

  final List<int> colorCodes = <int>[40, 40, 40,40];

  @override
  Widget build(BuildContext context) {
    return new Stack(
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
        ),new Container(
          padding: EdgeInsets.only(top: MediaQuery.of(context).size.height/8, left: 0),
          height: MediaQuery.of(context).size.height - 100,
          child: ListView.separated(
            itemCount: entries.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 97, //altura
                color: Colors.amber[colorCodes[index]],
                child: new GestureDetector(
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
                          subtitles[index]
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
                  onTap: () => {

                  },
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) => const Divider(),
          ),
        ),

      ],
    );
  }
}