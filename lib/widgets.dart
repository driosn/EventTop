import 'package:flutter/material.dart';

class modificable_words extends StatelessWidget {
  @override
  String _word;
  double _size;
  Color _fontColor;

  modificable_words(String w, double s, Color f) {
    _word = w;
    _size = s;
    _fontColor = f;
  }

  Widget build(BuildContext context) {
    return Text(_word,
        textDirection: TextDirection.ltr,
        style: TextStyle(
          color: _fontColor,
          fontFamily: 'SpicyRice',
          fontSize: _size,
        ));
  }
}

final loginButton = Container(
  padding: EdgeInsets.only(top: 16.0),
  height: 50.0,
  child: Material(
    borderRadius: BorderRadius.circular(20.0),
    shadowColor: Colors.blueAccent,
    color: Colors.blue[800],
    elevation: 7.0,
    child: InkWell(
      borderRadius: BorderRadius.circular(20.0),
      child: Center(
        child: Text(
          'LOGIN',
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'SpicyRice',)
        ),
      ),
    ),
  ),
);
