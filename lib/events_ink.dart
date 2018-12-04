import 'package:flutter/material.dart';
import 'package:event_top/principal_page.dart';
import 'package:event_top/event_description.dart';

class EventElement extends StatelessWidget {

  EvDesc _event;

  String _image,_tech, _desc, _hour, _org, _description;

  EventElement(String i, String t, String d, String h, String o, String desc){
    _image = i;
    _tech = t;
    _desc = d;
    _hour = h;
    _org = o;
    _description = desc;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        height: 60.0,
        margin: EdgeInsets.only(left: 15.0, right: 15.0, top: 5.0, bottom: 5.0),
        decoration: BoxDecoration(
          border: new Border.all(color: Colors.blue)
        ),
        child: Row(
          children: <Widget>[
            Image.asset(_image),
            new Container(
              margin: EdgeInsets.only(left: 10.0,right: 10.0),
              child: Center(
                child: Column(
                  children: <Widget>[
                    Text(_tech, style: TextStyle(fontFamily: 'SpicyRice'),),
                    Text(_desc, style: TextStyle(fontFamily: 'SpicyRice')),
                    Text(_org, style: TextStyle(fontFamily: 'SpicyRice')),
                  ],
                ),
              ),
            ),
            new Expanded(child: Center(
              child: Text(_hour, style: TextStyle(fontSize: 10.0),),
            ))
          ],
        ),
      ),
      onTap: (){
        print('Hola Mundo');
        _event = new EvDesc(_desc, _image, _description, _hour, _org);
        Navigator.push(context, MaterialPageRoute(
            builder: (context)=> _event
        ));
      },
    );
  }
}
