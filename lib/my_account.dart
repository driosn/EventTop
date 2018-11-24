import 'package:flutter/material.dart';
import 'package:event_top/widgets.dart';
import 'package:event_top/main.dart';
import 'package:event_top/add_event.dart';

class My_Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Container(
        padding: EdgeInsets.symmetric(vertical: 100.0, horizontal: 50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new image_container(),
            new modificable_words('Cosme Fulanito', 30.0, Colors.black),
            new InkWell(
              child: new Text('Change Account',style: TextStyle(color: Colors.blue, fontSize: 10.0),),
              onTap: (){
                print('Change Account apretado');
              },
            ),
            new modificable_words('Interests', 40.0, Colors.blue[800]),
            Expanded(
              child: new checkBox(),
            ),
            new AddEvent(),
          ],
        ),
      ),
      routes: <String, WidgetBuilder>{
        "/AddPage": (BuildContext context) => new AddPage(),
      },
    );
  }
}

class checkBox extends StatefulWidget {
  @override
  _checkBoxState createState() => _checkBoxState();
}

class _checkBoxState extends State<checkBox> {
  Map<String, bool> values = {'Web':false,'Mobile':false,'Artificial Inteligence':false};
  @override
  Widget build(BuildContext context) {
    return new ListView(
      children: values.keys.map((String key) {
        return new CheckboxListTile(
          title: new Text(key),
          value: values[key],
          onChanged: (bool value) {
            setState(() {
              values[key] = value;
              print(values['Web']);
              print(values['Mobile']);
              print(values['Artificial Inteligence']);

            });
          },
        );
      }).toList(),
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

class AddEvent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
                  'Add Event',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'SpicyRice',)
              ),
            ),
            onTap: (){
              Navigator.of(context).pushNamed("/AddPage");
            }
        ),
      ),
    );
  }
}