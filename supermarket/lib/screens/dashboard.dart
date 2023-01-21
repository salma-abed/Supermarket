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
import 'package:mobileproject/widgets/dashboard_cat_container_widget.dart';
import 'package:mobileproject/widgets/default_container.dart';
import 'package:mobileproject/widgets/input.dart';
import 'package:mobileproject/widgets/navigationbar.dart';
import 'package:no_glow_scroll/no_glow_scroll.dart';
import '../widgets/dashboard_subcat_container_widget.dart';
import '../widgets/default_form_field.dart';
import '../widgets/drawer_widget.dart';
import '../widgets/major_dashboard_container.dart';
import '../widgets/search_widget.dart';

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
              onPressed: () {
                context.go('/Contact');
              },
            ),
          ],
        ),
        drawer: DraweWigdet(),

        // bottomNavigationBar: NavigationBarWidget(),

        body: Container(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MajorItemContainer(cat: 'Welcome user'),
            SearchWidget(searchController: _searchController),
            Expanded(
              child: NoGlowScroll(
                child: ListView(
                  children: [
                    ItemContainer(cat: 'Butchery'),
                    Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.all(20),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 173, 205, 233)
                              .withOpacity(0.55),
                          border: Border.all(
                            color: Color.fromARGB(0, 188, 230, 247),
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Column(children: [
                                  ItemSubContainer(
                                      img: 'images/filletsmeat.jpg',
                                      subCat: 'Fillets')
                                ]),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Column(children: [
                                  ItemSubContainer(
                                      img: 'images/filletsmeat.jpg',
                                      subCat: 'Fillets')
                                ]),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Column(children: [
                                  ItemSubContainer(
                                      img: 'images/marinated.jpg',
                                      subCat: 'Marinated'),
                                ]),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                child: Column(children: [
                                  ItemSubContainer(
                                      img: 'images/cubesandcuts.jpg',
                                      subCat: 'any'),
                                ]),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    ItemContainer(cat: 'Fruits & Veggies'),
                    Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.all(20),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 173, 205, 233)
                              .withOpacity(0.55),
                          border: Border.all(
                            color: Color.fromARGB(0, 188, 230, 247),
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 5),
                                child: Column(children: [
                                  ItemSubContainer(
                                      img: 'images/filletsmeat.jpg',
                                      subCat: 'Fillets'),
                                ]),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 5),
                                child: Column(children: [
                                  ItemSubContainer(
                                    img: 'images/marinated.jpg',
                                    subCat: 'Marinated',
                                  ),
                                ]),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 5),
                                child: Column(children: [
                                  ItemSubContainer(
                                    img: 'images/cubesandcuts.jpg',
                                    subCat: 'Cubes & Strips',
                                  ),
                                ]),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    ItemContainer(cat: 'Bakery'),
                    Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.all(20),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 173, 205, 233)
                              .withOpacity(0.55),
                          border: Border.all(
                            color: Color.fromARGB(0, 188, 230, 247),
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 5),
                                child: Column(children: [
                                  ItemSubContainer(
                                      img: 'images/filletsmeat.jpg',
                                      subCat: 'Fillets'),
                                ]),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 5),
                                child: Column(children: [
                                  ItemSubContainer(
                                    img: 'images/marinated.jpg',
                                    subCat: 'Marinated',
                                  ),
                                ]),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 5),
                                child: Column(children: [
                                  ItemSubContainer(
                                    img: 'images/cubesandcuts.jpg',
                                    subCat: 'Cubes & Strips',
                                  ),
                                ]),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    ItemContainer(cat: 'Dairy & Milk'),
                    Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.all(20),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 173, 205, 233)
                              .withOpacity(0.55),
                          border: Border.all(
                            color: Color.fromARGB(0, 188, 230, 247),
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Row(
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 5),
                                child: Column(children: [
                                  ItemSubContainer(
                                      img: 'images/filletsmeat.jpg',
                                      subCat: 'Fillets'),
                                ]),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 5),
                                child: Column(children: [
                                  ItemSubContainer(
                                    img: 'images/marinated.jpg',
                                    subCat: 'Marinated',
                                  ),
                                ]),
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 5),
                                child: Column(children: [
                                  ItemSubContainer(
                                    img: 'images/cubesandcuts.jpg',
                                    subCat: 'Cubes & Strips',
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
