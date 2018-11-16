import 'package:event_top/widgets.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      body: new Stack(
        children: <Widget>[
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new modificable_words('EventTop', 60.0, Colors.blue[800]),
              new Padding(padding: EdgeInsets.only(left: 48.0, right: 48.0),
                child: new Form(
                  child: new Column(
                    children: <Widget>[
                      new TextFormField(
                        decoration: new InputDecoration(
                            hintText: 'Enter Email'),
                        keyboardType: TextInputType.emailAddress,
                      ),
                      new TextFormField(
                        decoration: new InputDecoration(
                            hintText: 'Enter Password'),
                        keyboardType: TextInputType.emailAddress,
                        obscureText: true,
                      ),
                      loginButton,
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
