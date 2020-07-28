import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  String title;
  Home ({Key key, this.title}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Stack(
        children: <Widget>[
          new Positioned(
            child: Text.rich(new TextSpan(text: widget.title, style: TextStyle(
              fontSize: 35,
              color: Color.fromRGBO(209, 71, 78, 1)
            ))),
            top: 50,
            left: (MediaQuery.of(context).size.width/2.6),
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
          Container(
            padding: EdgeInsets.only(top: 100),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  child: Container(
                    width: MediaQuery.of(context).size.width-30,
                    height: 160,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: <BoxShadow>[
                        BoxShadow(color: Colors.grey, blurRadius: 10.0, offset: Offset(1.0, 6.0), spreadRadius: 1)
                      ]
                    ),
                    child: 
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new Column(
                              children: <Widget>[
                                new Container(
                                  width: 50,
                                  height: 50,
                                  child: Image.asset('assets/images/sanitation.png'),
                                ),
                                new Container(
                                  child: Text('150', style: TextStyle(fontSize: 20, color: Color.fromRGBO(56, 60, 59, 1)),),
                                )
                              ],
                            ),
                            new Container(width: 20,),
                            new Column(
                              children: <Widget>[
                                new Container(
                                  width: 50,
                                  height: 50,
                                  child: Image.asset('assets/images/food.png'),
                                ),
                                new Container(
                                  child: Text('20', style: TextStyle(fontSize: 20, color: Color.fromRGBO(56, 60, 59, 1)),),
                                )
                              ],
                            ),
                            new Container(width: 20,),
                            new Column(
                              children: <Widget>[
                                new Container(
                                  width: 50,
                                  height: 50,
                                  child: Image.asset('assets/images/health.png'),
                                ),
                                new Container(
                                  child: Text('20', style: TextStyle(fontSize: 20, color: Color.fromRGBO(56, 60, 59, 1)),),
                                )
                              ],
                            ),
                          ],
                        ),
                        new Row()
                      ],
                    ),
                  ),
                ),
                new Container(height: 10,),
                new Container(
                    width: MediaQuery.of(context).size.width-30,
                  height: MediaQuery.of(context).size.height - 380,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10)
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}