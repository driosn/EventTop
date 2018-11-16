import 'package:flutter/material.dart';

class EventElement extends StatelessWidget {
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
            Image.asset('images/react.png'),
            new Container(
              margin: EdgeInsets.only(left: 10.0,right: 10.0),
              child: Column(
                children: <Widget>[
                  Text('React Native', style: TextStyle(fontFamily: 'SpicyRice'),),
                  Text('Introduction to React', style: TextStyle(fontFamily: 'SpicyRice')),
                  Text('David Rios', style: TextStyle(fontFamily: 'SpicyRice')),
                ],
              ),
            ),
            new Expanded(child: Center(
              child: Text('11.00AM', style: TextStyle(fontSize: 10.0),),
            ))
          ],
        ),
      ),
      onTap: (){
        print('Hola Mundo');
      },
    );
  }
}
