// ignore_for_file: avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, prefer_const_constructors, unnecessary_import, implementation_imports

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Category extends StatefulWidget {
  const Category({super.key});
  
  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('images/background/background5.jpg'),
            fit: BoxFit.none),
      ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: ListView(children: [
            Column(
              children: [
                Container(
                  height: 150,
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Color(0xffe0fbfc).withOpacity(0.55),
                      border: Border.all(
                        color: Color.fromARGB(0, 188, 230, 247),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Marinated',
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                        CircleAvatar(
                          backgroundImage: AssetImage(
                            'images/marinated.jpg',
                          ),
                          radius: 92,
                        ),
                      ]),
                ),
                Container(
                  height: 150,
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Color(0xffe0fbfc).withOpacity(0.55),
                      border: Border.all(
                        color: Color.fromARGB(0, 188, 230, 247),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Cubes & Strips',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                      CircleAvatar(
                        backgroundImage: AssetImage(
                          'images/cubesandcuts.jpg',
                        ),
                        radius: 65,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 150,
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Color(0xffe0fbfc).withOpacity(0.55),
                      border: Border.all(
                        color: Color.fromARGB(0, 188, 230, 247),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        ' Fillets  ',
                        style: TextStyle(
                          fontSize: 35,
                        ),
                      ),
                      CircleAvatar(
                        backgroundImage: AssetImage(
                          'images/filletsmeat.jpg',
                        ),
                        radius: 102,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 150,
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Color(0xffe0fbfc).withOpacity(0.55),
                      border: Border.all(
                        color: Color.fromARGB(0, 188, 230, 247),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Wholecuts',
                        style: TextStyle(
                          fontSize: 35,
                        ),
                      ),
                      CircleAvatar(
                        backgroundImage: AssetImage(
                          'images/wholecuts.jpg',
                        ),
                        radius: 65,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 150,
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Color(0xffe0fbfc).withOpacity(0.55),
                      border: Border.all(
                        color: Color.fromARGB(0, 188, 230, 247),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Burgers & Susges',
                        style: TextStyle(
                          fontSize: 35,
                        ),
                      ),
                      CircleAvatar(
                        backgroundImage: AssetImage(
                          'images/burgersandsusges.jpg',
                        ),
                        radius: 92,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 150,
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Color(0xffe0fbfc).withOpacity(0.55),
                      border: Border.all(
                        color: Color.fromARGB(0, 188, 230, 247),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Wings & Drums',
                        style: TextStyle(
                          fontSize: 35,
                        ),
                      ),
                      CircleAvatar(
                        backgroundImage: AssetImage(
                          'images/wingsanddrums.jpg',
                        ),
                        radius: 92,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 150,
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Color(0xffe0fbfc).withOpacity(0.55),
                      border: Border.all(
                        color: Color.fromARGB(0, 188, 230, 247),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Frozen',
                        style: TextStyle(
                          fontSize: 35,
                        ),
                      ),
                      CircleAvatar(
                        backgroundImage: AssetImage(
                          'frozen.jpg',
                        ),
                        radius: 92,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ])),
    );
  }
}
