import 'package:flutter/material.dart';
import 'package:event_top/widgets.dart';
import 'package:event_top/login_page.dart';
import 'package:event_top/principal_page.dart';
import 'package:event_top/navigation_main_bar.dart';
import 'package:event_top/events_ink.dart';
import 'package:event_top/add_event.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        home: new LoginPage(),
        routes: <String, WidgetBuilder>{
        "/NavigationBar": (BuildContext context) => new NavigationBar(),
      },
      );
  }
}