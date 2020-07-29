import 'package:callforhelp/mapping.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  String title;
  Home ({Key key, this.title}) : super(key: key);
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> homeItems = List<Widget>();

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    for (int i=0; i< 7; i++) {
      homeItems.add(new HomeItem(communityNum: i, community_state: "MANAUS - AM", num_needing: 10*(i+1),));
    }
  }

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
            padding: EdgeInsets.only(top: 70),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  child: Container(
                    width: MediaQuery.of(context).size.width-30,
                    height: 180,
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
                                  width: 70,
                                  height: 70,
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
                                  width: 70,
                                  height: 70,
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
                                  width: 70,
                                  height: 70,
                                  child: Image.asset('assets/images/health.png'),
                                ),
                                new Container(
                                  child: Text('2000', style: TextStyle(fontSize: 20, color: Color.fromRGBO(56, 60, 59, 1)),),
                                )
                              ],
                            ),
                          ],
                        ),
                        new Container(
                          child: Row(
                            children: <Widget>[
                              new Container(
                                child: FlatButton(
                                  child: Text('VIEW MORE DETAILS'.toUpperCase(), style: TextStyle(color: Color.fromRGBO(56, 60, 59, 1)),),
                                  onPressed: ()=>{ Navigator.push(context, MaterialPageRoute(builder: (BuildContext build) {
                                    return new Mapping(state: 0,);
                                  }))},
                                ),
                                padding: EdgeInsets.only(top: 20),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                new Container(height: 10,),
                new Container(
                  padding: EdgeInsets.only(left:15),
                    width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height - 400,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: ListView.separated(itemBuilder: (BuildContext build, int index) => homeItems[index],
                      separatorBuilder: (context, index) => Divider(),
                      itemCount: homeItems.length)
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
//
class HomeItem extends StatefulWidget {
  int communityNum; String community_state; int num_needing;

  HomeItem({Key key, this.communityNum, this.community_state, this.num_needing}) : super(key: key);
  @override
  _HomeItemState createState() => _HomeItemState();
}

class _HomeItemState extends State<HomeItem> {
  @override
  Widget build(BuildContext context) {
    return new Row(
      children: <Widget>[
        new Container(
          child: Image.asset('assets/images/community${widget.communityNum}.png'),
          width: 100,
          height: 60,
        ),
        new Container(
          padding: EdgeInsets.only(left: 20),
          width: MediaQuery.of(context).size.width - 180,
          child: Column(
            children: <Widget>[
              Text('${widget.community_state}'),
              Text('${widget.num_needing} of needing families here')
            ],
          ),
        ),
        new IconButton(
          icon: Icon(Icons.add),
        )
      ],
    );;
  }
}