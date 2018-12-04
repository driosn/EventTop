import 'package:flutter/material.dart';
import 'package:event_top/widgets.dart';

class EvDesc extends StatelessWidget {
  String _tit;
  String _image;
  String _hour;
  String _org;
  String _desc;
  var assetsImage;

  EvDesc(String t, String i, String d, String h, String o) {
    _tit = t;
    _image = i;
    _hour = h;
    _org = o;
    _desc = d;
  }

  @override
  Widget build(BuildContext context) {
    assetsImage = new AssetImage(_image);
    return Scaffold(
      appBar: AppBar(
        title: Text(_tit),
      ),
      body: Container(
        padding: EdgeInsets.all(30.0),
        child: Center(
          child: Column(
            children: <Widget>[
              new modificable_words(_tit, 40.0, Colors.blue[800]),
              new Container(
                child: new Column(
                  children: <Widget>[
                    new Container(
                      margin: EdgeInsets.all(10.0),
                      child: new Image(image: assetsImage, width: 100.0, height: 100.0),
                    ),
                    new Container(
                      margin: EdgeInsets.all(10.0),
                      child: new Text(_desc),
                    )
                  ],
                )
              ),
              new Container(
                margin: EdgeInsets.all(10.0),
                child: new Row(
                 children: <Widget>[
                   new modificable_words("Organization:   ", 14.0, Colors.blue),
                   new Text(_org),
                   new Text("    "),
                   new modificable_words("Hour:   ", 14.0, Colors.blue),
                   new Text(_hour),
                 ],
               ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
