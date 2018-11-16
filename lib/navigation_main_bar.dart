import 'package:flutter/material.dart';
import 'package:event_top/principal_page.dart';
import 'package:event_top/all_events.dart';
import 'package:event_top/my_events.dart';
import 'package:event_top/my_account.dart';

class NavigationBar extends StatefulWidget {
  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  int _currentIndex = 0;

  Widget callPage(int currentIndex){
    switch(currentIndex){
      case 0: return PrincipalPage(); break;
      case 1: return All_Events();  break;
      case 2: return My_Account();  break;

        break;

      default: return PrincipalPage();
    }
  }




  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EventTop Main',
      home: Scaffold(
        body: callPage(_currentIndex),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
            onTap: (value){
              _currentIndex = value;
              setState(() {

              });
            },
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
              BottomNavigationBarItem(icon: Icon(Icons.event), title: Text('All Events')),
              BottomNavigationBarItem(icon: Icon(Icons.settings), title: Text('My Account')),
            ]
        ),
      ),
    );
  }
}
