import 'package:callforhelp/ibm_generic.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {

  String title;
  ChatPage({Key key, this.title}) : super (key: key);
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    final List<String> entries = ['Andreia', 'RG', 'James','Gustavo'],
        subtitles=['Hello, how are you....', "Hello, how are you?....", 'Hello, how are you?....','Hello, how are you?....'],
        images = ['pesquisador', 'comunidade', 'empresa', 'voluntario'];
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
            left: (MediaQuery.of(context).size.width/2.7),
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
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.height/6, left: 0),
            height: MediaQuery.of(context).size.height - 90,
            child: ListView.separated(
              itemCount: entries.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  //height: 70, //altura
                  color: Colors.amber[colorCodes[index]],
                  child: new GestureDetector(
                    child: new Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        new Container(
                          child: Image.asset('assets/images/${images[index]}.png'),
                          width: 100,
                          height: 100,
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
                        IconButton(
                            icon: Icon(Icons.arrow_forward_ios),
                            color: Color.fromRGBO(242, 174, 193, 1),
                        )
                      ],
                    ),
                    onTap: () => Navigator.push(context, MaterialPageRoute(builder:(BuildContext build ){
                      return ChatBot();//ChatsPage();
                    },
                    )),
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