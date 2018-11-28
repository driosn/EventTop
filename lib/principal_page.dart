import 'package:flutter/material.dart';
import 'package:event_top/widgets.dart';
import 'package:event_top/events_ink.dart';

class PrincipalPage extends StatefulWidget {
  @override
  _PrincipalPageState createState() => _PrincipalPageState();
}

class _PrincipalPageState extends State<PrincipalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(30.0),
        child: Column(
          children: <Widget>[
            new Row(
              children: <Widget>[
                new Expanded(
                    child: new modificable_words(
                        'EventTop', 50.0, Colors.blue[800])),
                new IconButton(
                    icon: Icon(Icons.account_circle, color: Colors.black))
              ],
            ),
            new Padding(
                padding: EdgeInsets.only(top: 16.0),
                child: modificable_words(
                    'Event Recomendations', 25.0, Colors.black)),
            new Expanded(
                child: new ListView.builder(
                    itemBuilder: (_,int index) =>EventElement(),
                    itemCount: 20,
                ),
            ),
          ],
        ),
      ),
    );
  }
}

class recomendations_element extends StatelessWidget {
  @override

  /*var _logo;
  String _tech, _desc, _hour;

  recomendations_element(Image i, String t, String d, String h){
    _logo = i;
    _tech = t;
    _desc = d;
    _hour = h;
  }*/

  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 50.0,
        padding: EdgeInsets.all(5.0),
        child: Row(
          children: <Widget>[
            Image(
              image: new AssetImage('images/react.png'),
              width: 50.0,
              height: 50.0,
            ),
            new Expanded(
              child: Column(
                children: <Widget>[
                  Text('React Native'),
                  Text('Introduction to React'),
                  Text('Una persona')
                ],
              ),
            ),
            Text('11.Am')
          ],
        ),
      ),
    );
  }
}
