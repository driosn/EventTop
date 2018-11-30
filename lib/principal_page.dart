import 'package:flutter/material.dart';
import 'package:event_top/widgets.dart';
import 'package:event_top/events_ink.dart';

List<Widget> events = [];
bool adder = false;

List<String> dir = ["images/react.png", "images/flutter.png", "images/tensorflow.png", "images/artificial.png"];
List<String> tech = ["Web", "Mobile", "Web", "Artificial Inteligence"];
List<String> desc = ["Introduction to React", "Introduction to Flutter", "Introduction to Tensorflow", "Introduction to AI"];
List<String> hour = ["11:00 AM", "12:00 AM", "9:00 AM", "12:00 AM"];
List<String> org = ["Oli", "Oli2", "Oli3", "Oli"];

addEvent(String i, String t, String d, String h, String o){
  dir.add(i);
  tech.add(t);
  desc.add(d);
  hour.add(h);
  org.add(o);
}

class PrincipalPage extends StatefulWidget {
  @override
  _PrincipalPageState createState() => _PrincipalPageState();
}

class _PrincipalPageState extends State<PrincipalPage> {
  loadElements(){
    for(var i=0; i<dir.length; i++){
      events.add(EventElement(dir[i], tech[i], desc[i], hour[i], org[i]));
    }
  }
  @override
  Widget build(BuildContext context) {
    events = [];
    loadElements();
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
                child: ListView(
                  children: events,
                ),
            ),
          ],
        ),
      ),
    );
  }
}


