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
            UserAccountsDrawerHeader(
              accountName: Text("AppMaking.co"),
              accountEmail: Text("sundar@appmaking.co"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://appmaking.co/wp-content/uploads/2021/08/appmaking-logo-colored.png"),
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://appmaking.co/wp-content/uploads/2021/08/android-drawer-bg.jpeg",
                  ),
                  fit: BoxFit.fill,
                ),
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage(
                      "https://randomuser.me/api/portraits/women/74.jpg"),
                ),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage(
                      "https://randomuser.me/api/portraits/men/47.jpg"),
                ),
              ],
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.account_box),
              title: Text("About"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.grid_3x3_outlined),
              title: Text("Products"),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.contact_mail),
              title: Text("Contact"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.change_history),
              title: const Text('Change history'),
              onTap: () {
                // change app state...
                Navigator.pop(context); // close the drawer
                },)
          ],
        ),
        );
  }
}
