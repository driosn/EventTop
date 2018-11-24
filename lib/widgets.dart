import 'package:flutter/material.dart';
import 'package:path/path.dart';

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
