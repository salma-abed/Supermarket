// ignore_for_file: avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, prefer_const_constructors, unnecessary_import, implementation_imports, unused_import

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:go_router/go_router.dart';
import 'package:mobileproject/screens/categries.dart';
import 'package:mobileproject/screens/contactus.dart';
import 'package:mobileproject/screens/loading.dart';
import 'package:mobileproject/widgets/default_container.dart';
import 'package:mobileproject/widgets/input.dart';
import 'package:mobileproject/widgets/navigationbar.dart';
import 'package:no_glow_scroll/no_glow_scroll.dart';
import '../widgets/default_form_field.dart';
import '../widgets/drawer_widget.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
    //final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _searchController = TextEditingController();
//   Future<String> getUsername() async {
//   //Get the current user 
//   //var user = await Firebase.auth().currentUser;

//   //Return the username of the current user 
//   return user.displayName;
// }
  //get username => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      
      
      appBar: AppBar(
        title: Center(child: const Text('Sofa Market')),
                actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.email),
            onPressed: () {context.go('/Contact');
  },
  ),
  ],
      ),
      //bottomNavigationBar: NavigationBar() ,
       // drawer:DraweWigdet(),
      


        body: Container(
          
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                Container(
                  padding: EdgeInsets.only(top: 50, left: 20),
                  child: Text('Welcome Back, username',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.w500)),
                ),
          Padding(
            padding: const EdgeInsets.only(top:20.0,bottom:20.0),
            child: Container(
                        margin: EdgeInsets.only(left: 20, right: 20),
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: defaultFormField(
                            validate: (value) {
                              if (value!.isEmpty) {
                                return '  ';
                              }
                              return null;
                            },
                            controller: _searchController,
                            type: TextInputType.name,
                            prefix: Icons.search,
                            hint: 'Search products here',
                            hintstyle: TextStyle(fontWeight: FontWeight.w800),
                            contentpadding: EdgeInsets.only(left: 10),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.transparent),
                            )),
                      ),
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
                        defaultContainer(
                          H: 150,
                          W: MediaQuery.of(context).size.width,
                          Margin: EdgeInsets.all(20),
                          Padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 173, 205, 233).withOpacity(0.55),
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
                              color: Color.fromARGB(255, 173, 205, 233).withOpacity(0.55),
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
                              color: Color.fromARGB(255, 173, 205, 233).withOpacity(0.55),
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
                              color: Color.fromARGB(255, 173, 205, 233).withOpacity(0.55),
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
            )
            )
            );
  }
}
