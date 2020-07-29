import 'package:flutter/material.dart';

class Achievement extends StatefulWidget {
  String title;
  int quantity;
  Achievement({this.title, this.quantity, Key key}) : super(key: key);

  @override
  _AchievementState createState() => _AchievementState();
}

class _AchievementState extends State<Achievement> {

  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 74,
      child: new Stack(
        textDirection: TextDirection.ltr,
        fit: StackFit.loose,
        children: <Widget>[
          new Container(
            child: ClipOval(
              child: Image.asset('assets/images/conquista.png'),
            ),
            //color: Color.fromRGBO(209, 71, 78, 100),
            width: 60,
            height: 60,
          ),
          new Container(
            padding: EdgeInsets.only(left: 80, top: 2),
            width: MediaQuery.of(context).size.width-50,
            child: new Text.rich(
              new TextSpan(
                  text: '${widget.quantity.toString()} ${widget.title}',
                  style: TextStyle(color: Color.fromRGBO(56, 60, 59, 1), fontSize: 20)),
              softWrap: true,
            ),
          ),
          new Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.only(left: 80, top: 5),
            child: new IconButton(icon: Icon(Icons.share, size: 30, color: Color.fromRGBO(56, 60, 59, 1),), onPressed: () => {})
          ),
        ],
      ),
    );
  }
}

class AchievementList extends StatefulWidget {
  List<Achievement> achievements;
  AchievementList({Key key, this.achievements}) : super(key: key);

  @override
  _AchievementListState createState() => _AchievementListState();
}

class _AchievementListState extends State<AchievementList> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      padding: EdgeInsets.only(top: 10, bottom: 20, left: 10, right: 10),
      itemBuilder: (BuildContext context, int index) =>
          widget.achievements[index],
      itemCount: widget.achievements.length,

      //separatorBuilder: (BuildContext context, int index) => const Divider(),
      addAutomaticKeepAlives: false,
    );
  }
}
