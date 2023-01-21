import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DraweWigdet extends StatefulWidget {
  const DraweWigdet({super.key});

  @override
  State<DraweWigdet> createState() => _DraweWigdetState();
}

class _DraweWigdetState extends State<DraweWigdet> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
  
    child: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {context.go('/DashBoard');},
            ),
            ListTile(
              leading: Icon(Icons.account_box),
              title: Text("About"),
              onTap: () {context.go('/');},
            ),
            ListTile(
              leading: Icon(Icons.calendar_month),
              title: Text("Orders History"),
              onTap: () {context.go('/Orders History');},
            ),
            ListTile(
              leading: Icon(Icons.mail),
              title: Text("Contact"),
              onTap: () {context.go('/Contact');},
            ),
            ListTile(
              leading: const Icon(Icons.change_history),
              title: const Text('Change history'),
              onTap: () {
                Navigator.pop(context); 
                },)
          ],
        ),
        );
  }
}
