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
        padding: EdgeInsets.all(30),
        children: [
          Column(
            children: [],
          ),
          DrawerHeader(
            child: Text(''),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/background/background5.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          ListTile(
            title: Text('Account '),
            onTap: () {
              context.go('/account');
            },
          ),
          ListTile(
            title: Text('Home'),
            onTap: () {
              // context.go('/');
            },
          ),
          ListTile(
            title: Text('Logout'),
            onTap: () {
              // Navigator.push(context, MaterialPageRoute(builder: ((context) {
              //   return AuthScreen();
              // })));
                            context.go('/login');

            },
          ),
          // switchWidget()
        ],
      ),
    );
  }
}
