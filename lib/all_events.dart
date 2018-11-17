import 'package:event_top/events_ink.dart';
import 'package:flutter/material.dart';

class All_Events extends StatefulWidget {
  @override
  _All_EventsState createState() => _All_EventsState();
}

class _All_EventsState extends State<All_Events> {
  /*List<DropdownMenuItem<int>> listDrop = [];

  void loopData(){
    listDrop.add(new DropdownMenuItem(
      child: new Text('Web'),
      value: 1
    ));
    listDrop.add(new DropdownMenuItem(
        child: new Text('Mobile'),
        value: 1
    ));
    listDrop.add(new DropdownMenuItem(
        child: new Text('Artificial Intelligence'),
        value: 1
    ));
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: new Text('All Events'),
        ),
        body: Padding(
          padding: EdgeInsets.only(top: 15.0, bottom: 30.0, left: 15.0, right: 15.0),
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: 20.0),
                  height: 50.0,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.red)),
                ),
                new Expanded(
                  child: new ListView.builder(
                    itemBuilder: (_, int index) => EventElement(),
                    itemCount: 20,
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
