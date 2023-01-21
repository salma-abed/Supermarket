// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class NavigationBarWidget extends StatefulWidget {
  const NavigationBarWidget({super.key});
  @override
  _NavigationBarWidgetState createState() => _NavigationBarWidgetState();
}

class _NavigationBarWidgetState extends State<NavigationBarWidget> {
  int _selectedIndex = 0;

  static List<Widget> _pageOptions = <Widget>[
    Text('Dashboard'),
    Text('Orders History'),
    Text('account'),
  ];


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _pageOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ('DashBoard')),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month), label: ('Orders History')),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ('account')),
        ],
        currentIndex:
            _selectedIndex, 
        onTap: (int index) {
          setState(() => _selectedIndex = index);
          switch (index) {
            case 0:
              context.go('/Dashboard');
              break;
            case 1:
              Navigator.pushNamed(context, '/Orders History');
              break;
            case 2:
              Navigator.pushNamed(context, 'account');
              break;
          }
        }, 
      ),
    ); // end of the class Navigation bar page state
  } // end of the class navigation bar page stateful widget
}
