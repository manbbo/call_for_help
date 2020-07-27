import 'package:flutter/material.dart';

class Achievement extends StatefulWidget {
  String title;
  int quantity;
  Achievement({this.title, this.quantity, Key key}) : super(key: key);

  @override
  _AchievementState createState() => _AchievementState();
}

class _AchievementState extends State<Achievement> {
  String imgUrl =
      'https://cdn.icon-icons.com/icons2/2108/PNG/512/flutter_icon_130936.png';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      height: 74,
      child: new Stack(
        textDirection: TextDirection.ltr,
        fit: StackFit.loose,
        children: <Widget>[
          new Container(
            child: ClipOval(
              child: Image.network(imgUrl),
            ),
            width: 60,
            height: 60,
          ),
          new Container(
            padding: EdgeInsets.only(left: 80, top: 2),
            width: MediaQuery.of(context).size.width-50,
            child: new Text.rich(
              new TextSpan(
                  text: '${widget.quantity.toString()} ${widget.title}',
                  style: TextStyle(color: Colors.black, fontSize: 25)),
              softWrap: true,
            ),
          ),
          new Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.only(left: 80, top: 5),
            child: new IconButton(icon: Icon(Icons.share, size: 30,), onPressed: null)
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
