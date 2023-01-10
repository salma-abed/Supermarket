// ignore_for_file: avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, prefer_const_constructors, unnecessary_import, implementation_imports, unused_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mobileproject/screens/categries.dart';
import 'package:mobileproject/screens/loading.dart';
import 'package:mobileproject/widgets/input.dart';
import 'package:no_glow_scroll/no_glow_scroll.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
            drawer: Drawer(child: ListView(
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
        ),),
        
        
        
        body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/background/background5.jpg'),
                  fit: BoxFit.cover),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 50, left: 20),
                  child: Text('Welcome Back, Salma',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.w500)),
                ),
                Expanded(
                  child: NoGlowScroll(
                    child: ListView(
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 20, top: 5),
                          child: Text('Butchery',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w400)),
                        ),
                        Container(
                          height: 150,
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.all(20),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Color(0xffe0fbfc).withOpacity(0.55),
                              border: Border.all(
                                color: Color.fromARGB(0, 188, 230, 247),
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    child: Column(children: [
                                      CircleAvatar(
                                        backgroundImage: AssetImage(
                                          'images/filletsmeat.jpg',
                                        ),
                                        radius: 40,
                                      ),
                                      Text(
                                        'Fillets',
                                        style: TextStyle(
                                          fontSize: 20,
                                        ),
                                      ),
                                    ]),
                                  ),
                                  Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    child: Column(children: [
                                      CircleAvatar(
                                        backgroundImage: AssetImage(
                                          'images/marinated.jpg',
                                        ),
                                        radius: 40,
                                      ),
                                      Text(
                                        'Marinated',
                                        style: TextStyle(
                                          fontSize: 20,
                                        ),
                                      ),
                                    ]),
                                  ),
                                  Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    child: Column(children: [
                                      CircleAvatar(
                                        backgroundImage: AssetImage(
                                          'images/cubesandcuts.jpg',
                                        ),
                                        radius: 40,
                                      ),
                                      Text(
                                        'Cubes &\n Strips',
                                        style: TextStyle(
                                          fontSize: 20,
                                        ),
                                      ),
                                    ]),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 20, top: 10),
                          child: Text('Fruits & Veggis',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w400)),
                        ),
                        Container(
                          height: 150,
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.all(20),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Color(0xffe0fbfc).withOpacity(0.55),
                              border: Border.all(
                                color: Color.fromARGB(0, 188, 230, 247),
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Column(children: [
                                  CircleAvatar(
                                    backgroundImage: AssetImage(
                                      'images/filletsmeat.jpg',
                                    ),
                                    radius: 40,
                                  ),
                                  Text(
                                    'Fillets',
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                ]),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Column(children: [
                                  CircleAvatar(
                                    backgroundImage: AssetImage(
                                      'images/marinated.jpg',
                                    ),
                                    radius: 40,
                                  ),
                                  Text(
                                    'Marinated',
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                ]),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Column(children: [
                                  CircleAvatar(
                                    backgroundImage: AssetImage(
                                      'images/cubesandcuts.jpg',
                                    ),
                                    radius: 40,
                                  ),
                                  Text(
                                    'Cubes &\n Strips',
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                ]),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 20, top: 10),
                          child: Text('Bakery',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w400)),
                        ),
                        Container(
                          height: 150,
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.all(20),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Color(0xffe0fbfc).withOpacity(0.55),
                              border: Border.all(
                                color: Color.fromARGB(0, 188, 230, 247),
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    child: Column(children: [
                                      CircleAvatar(
                                        backgroundImage: AssetImage(
                                          'images/filletsmeat.jpg',
                                        ),
                                        radius: 40,
                                      ),
                                      Text(
                                        'Fillets',
                                        style: TextStyle(
                                          fontSize: 20,
                                        ),
                                      ),
                                    ]),
                                  ),
                                  Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    child: Column(children: [
                                      CircleAvatar(
                                        backgroundImage: AssetImage(
                                          'images/marinated.jpg',
                                        ),
                                        radius: 40,
                                      ),
                                      Text(
                                        'Marinated',
                                        style: TextStyle(
                                          fontSize: 20,
                                        ),
                                      ),
                                    ]),
                                  ),
                                  Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    child: Column(children: [
                                      CircleAvatar(
                                        backgroundImage: AssetImage(
                                          'images/cubesandcuts.jpg',
                                        ),
                                        radius: 40,
                                      ),
                                      Text(
                                        'Cubes &\n Strips',
                                        style: TextStyle(
                                          fontSize: 20,
                                        ),
                                      ),
                                    ]),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 20, top: 10),
                          child: Text('Dairy & Milk',
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w400)),
                        ),
                        Container(
                          height: 150,
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.all(20),
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Color(0xffe0fbfc).withOpacity(0.55),
                              border: Border.all(
                                color: Color.fromARGB(0, 188, 230, 247),
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    child: Column(children: [
                                      CircleAvatar(
                                        backgroundImage: AssetImage(
                                          'images/filletsmeat.jpg',
                                        ),
                                        radius: 40,
                                      ),
                                      Text(
                                        'Fillets',
                                        style: TextStyle(
                                          fontSize: 20,
                                        ),
                                      ),
                                    ]),
                                  ),
                                  Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    child: Column(children: [
                                      CircleAvatar(
                                        backgroundImage: AssetImage(
                                          'images/marinated.jpg',
                                        ),
                                        radius: 40,
                                      ),
                                      Text(
                                        'Marinated',
                                        style: TextStyle(
                                          fontSize: 20,
                                        ),
                                      ),
                                    ]),
                                  ),
                                  Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 10),
                                    child: Column(children: [
                                      CircleAvatar(
                                        backgroundImage: AssetImage(
                                          'images/cubesandcuts.jpg',
                                        ),
                                        radius: 40,
                                      ),
                                      Text(
                                        'Cubes &\n Strips',
                                        style: TextStyle(
                                          fontSize: 20,
                                        ),
                                      ),
                                    ]),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )));
  }
}
