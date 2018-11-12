import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

final event_top = Center(
  child:Text('EventTop',
        textDirection: TextDirection.ltr,
        style: TextStyle(color: Colors.blue[500],
        fontSize: 80.0,))
);

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Container(
      decoration: new BoxDecoration(color: Colors.white),
      child: event_top,
    );
  }

}