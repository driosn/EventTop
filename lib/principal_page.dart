import 'package:flutter/material.dart';
import 'package:event_top/widgets.dart';
import 'package:event_top/events_ink.dart';
import 'package:event_top/my_account.dart';
import 'package:event_top/all_events.dart';

List<Widget> events = [];
bool adder = false;

String bla = "Lorem ipsum dolor sit amet consectetur adipiscing elit blandit vel hendrerit, fringilla nisi fermentum aliquet montes placerat conubia ut dui mattis ad, nulla aptent diam habitant lacinia facilisi mollis augue eleifend. Torquent egestas urna fusce id senectus nullam proin metus purus, fringilla taciti aptent blandit venenatis feugiat per. Vitae montes nisl nisi congue sollicitudin viverra aliquam porta justo eros morbi sed, aenean taciti cras consequat tortor pharetra libero ultricies eget proin.";

List<String> dir = ["images/react.png", "images/flutter.png", "images/tensorflow.png", "images/artificial.png", "images/react.png", "images/react.png", "images/flutter.png", "images/tensorflow.png", "images/artificial.png"];
List<String> tech = ["Web", "Mobile", "Web", "Artificial Inteligence", "Web", "Web", "Mobile", "Web", "Artificial Inteligence"];
List<String> desc = ["Introduction to React", "Introduction to Flutter", "Introduction to Tensorflow", "Introduction to AI", "Programando con JuanPa", "React and Firebase", "Responsive Flutter", "Tensorflow", "Optimization Algorithms"];
List<String> hour = ["11:00 AM", "12:00 AM", "9:00 AM", "12:00 AM", "11:30 AM", "11:00 AM", "12:00 AM", "11:00 AM", "12:00 AM"];
List<String> org = ["Empresa A", "Empresa B", "Empresa C", "Empresa D", "Empresa E", "Empresa F", "Empresa G", "Empresa H", "Empresa I"];
List<String> descriptions = [bla, bla, bla, bla, bla, bla, bla, bla, bla];

addEvent(String i, String t, String d, String h, String o, String describe){
  dir.add(i);
  tech.add(t);
  desc.add(d);
  hour.add(h);
  org.add(o);
  descriptions.add(describe);
}

class PrincipalPage extends StatefulWidget {
  @override
  _PrincipalPageState createState() => _PrincipalPageState();
}

class _PrincipalPageState extends State<PrincipalPage> {
  loadElements(){
    if(values['Web']){
      loadWeb();
    }
    if(values['Mobile']){
      loadMobile();
    }
    if(values['Artificial Inteligence']){
      loadAI();
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


