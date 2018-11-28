import 'package:flutter/material.dart';
import 'package:event_top/widgets.dart';

class AddPage extends StatefulWidget {
  @override
  _AddPageState createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  List<DropdownMenuItem<int>> listDrop = [];

  int selected = null;

  int get_selected(){
    return selected;
  }

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
    final TextEditingController title_controller= new TextEditingController();
    final TextEditingController hour_controller = new TextEditingController();
    final TextEditingController org_controller = new TextEditingController();

    loadData();
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
          title: new Text('Add Events'),
        ),
        body: Padding(
          padding:
              EdgeInsets.only(top: 15.0, bottom: 30.0, left: 15.0, right: 15.0),
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 50.0),
            child: Column(
              children: <Widget>[
                new modificable_words('Add Your Event!', 40.0, Colors.blue[800]),
                Container(
                  margin: EdgeInsets.only(bottom: 20.0),
                  height: 50.0,
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.white)),
                  child: new Row(
                    children: <Widget>[
                      new modificable_words(
                          'Select Category', 20.0, Colors.blue),
                      new Expanded(
                        child: new Container(
                          margin: EdgeInsets.only(left: 10.0),
                          child: new DropdownButton(
                              value: selected,
                              items: listDrop,
                              hint: new Text('Select Item'),
                              iconSize: 20.0,
                              elevation: 16,
                              onChanged: (value) {
                                selected = value;
                                setState(() {});
                              }),
                        )
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20.0),
                  height: 50.0,
                  decoration:
                  BoxDecoration(border: Border.all(color: Colors.white)),
                  child: new Row(
                    children: <Widget>[
                      new modificable_words(
                          'Title', 20.0, Colors.blue),
                      new Expanded(
                          child: new Container(
                            margin: EdgeInsets.only(left: 10.0),
                            child: new TextField(
                              controller: title_controller,
                            ),
                          )
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20.0),
                  height: 50.0,
                  decoration:
                  BoxDecoration(border: Border.all(color: Colors.white)),
                  child: new Row(
                    children: <Widget>[
                      new modificable_words(
                          'Hour', 20.0, Colors.blue),
                      new Expanded(
                          child: new Container(
                            margin: EdgeInsets.only(left: 10.0),
                            child: new TextField(
                              controller: hour_controller,
                            ),
                          )
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 20.0),
                  height: 50.0,
                  decoration:
                  BoxDecoration(border: Border.all(color: Colors.white)),
                  child: new Row(
                    children: <Widget>[
                      new modificable_words(
                          'Organization', 20.0, Colors.blue),
                      new Expanded(
                          child: new Container(
                            margin: EdgeInsets.only(left: 10.0),
                            child: new TextField(
                              controller: org_controller,
                            ),
                          )
                      )
                    ],
                  ),
                ),
                new Container(
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
                            'Submit',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'SpicyRice',)
                        ),
                      ),
                      onTap: (){
                        String tit = title_controller.text;
                        String h = hour_controller.text;
                        String org = org_controller.text;
                        print('Technology: $selected   Title: $tit   Hour: $h   Organization: $org' );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
