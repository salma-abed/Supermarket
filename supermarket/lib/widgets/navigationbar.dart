import 'package:flutter/material.dart';

class NavigationBar extends StatefulWidget {
  const NavigationBar({super.key});
  @override
  _NavigationBarState createState() => _NavigationBarState();
}
class _NavigationBarState extends State<NavigationBar> {
  int _selectedIndex = 0;
  static List<Widget> _pageOptions = <Widget>[
    Text('DashBoard'),
    Text('Orders History'),
    Text('account'),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //body: Center(child: _pageOptions.elementAt(_selectedIndex)),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label:('DashBoard')),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_month), label: ('Orders History')),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ('account')),
        ],  
        currentIndex: _selectedIndex,   // this will be set when a new tab is tapped  
        onTap: _onItemTapped, // new function callback on tab selection  
      ),
    );											// end of the class Navigation bar page state  
  }                                               // end of the class navigation bar page stateful widget  
}