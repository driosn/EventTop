import 'package:flutter/material.dart';
import 'package:event_top/widgets.dart';

class My_Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Padding(
              padding: EdgeInsets.only(top: 1.0, bottom: 15.0),
              child: new modificable_words('Your Account', 30.0, Colors.blue[800]),
          ),
          new Padding(
              padding: EdgeInsets.all(15.0),
              child: new Row(
                children: <Widget>[
                  Padding(
                      padding: EdgeInsets.only(left: 5.0, right: 5.0),
                      child: image_container(),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5.0, right: 5.0),
                    child: new Column(
                      children: <Widget>[
                        modificable_words('Cosme Fulanito', 15.0, Colors.black),
                        change_Account,
                      ],
                    )
                  ),
                ],
              ),
          ),
        ],
      ),
    );
  }
}

class image_container extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,
      height: 100.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.0),
        color: Colors.black,
      ),
    );
  }
}

final change_Account = Container(
  padding: EdgeInsets.only(top: 5.0),
  height: 25.0,
  child: Material(
    borderRadius: BorderRadius.circular(10.0),
    shadowColor: Colors.blueAccent,
    color: Colors.blue[800],
    elevation: 7.0,
    child: InkWell(
      borderRadius: BorderRadius.circular(10.0),
      child: Center(
        child: Text(
            'Change Account',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'SpicyRice',)
        ),
      ),
    ),
  ),
);

