import 'package:event_top/events_ink.dart';
import 'package:flutter/material.dart';

class All_Events extends StatefulWidget {
  @override
  _All_EventsState createState() => _All_EventsState();
}

class _All_EventsState extends State<All_Events> {
  List<DropdownMenuItem<int>> listDrop = [];


  int selected = null;
  loadData() {
    //listDrop = drop.map((val) => new DropdownMenuItem<String>(
    // child: new Text(val), value: val)).toList();
    listDrop.add(new DropdownMenuItem(
      child: new Text('Web'),
      value: 1,
    ));
    listDrop.add(new DropdownMenuItem(
      child: new Text('Mobile'),
      value: 2,
    ));
    listDrop.add(new DropdownMenuItem(
      child: new Text('Artificial Inteligence'),
      value: 3,
    ));
  }

  @override
  Widget build(BuildContext context) {
    listDrop = [];
    final TextEditingController _controller = new TextEditingController();
    final searchInput = TextField(
      controller: _controller,
    );


    loadData();
    return Scaffold(
      resizeToAvoidBottomPadding: false,
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
                      BoxDecoration(border: Border.all(color: Colors.white)),
                  child: new Row(
                      children: <Widget>[
                        new DropdownButton(
                            value: selected,
                            items: listDrop,
                            hint: new Text('Select Item'),
                            iconSize: 20.0,
                            elevation: 16,
                            onChanged: (value){
                              selected = value;
                              setState(() {

                              });
                            }
                        ),
                        new Expanded(child: new TextField(
                          controller: _controller,
                        ))
                      ],
                  ),
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
