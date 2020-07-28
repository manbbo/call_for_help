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
    final List<String> entries = <String>['Manaus-AM', 'Cacique se curou', 'Palmas-TO','Doação de roupas'];
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

          ListView.separated(
            padding: EdgeInsets.only(top: 140, left: 0, bottom: 90),
            itemCount: entries.length,
            itemBuilder: (BuildContext context, int index) {

              return Container(
                height: 87, //altura
                color: Colors.amber[colorCodes[index]],
                child: Center(child: Text(' ${entries[index]}')),
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
              );
            },

            separatorBuilder: (BuildContext context, int index) => const Divider(),
          ),
        ],
      ),
    );
  }
}