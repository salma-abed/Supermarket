// ignore_for_file: avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, prefer_const_constructors, unnecessary_import, implementation_imports

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Item extends StatefulWidget {
  const Item({super.key});
  
  @override
  State<Item> createState() => _ItemState();
}

class _ItemState extends State<Item> {
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
                        color: Colors.transparent,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Butchery',
                          style: TextStyle(
                            fontSize: 30,
                          ),
                        ),
                        CircleAvatar(
                          backgroundImage: AssetImage(
                            'images/butchery.jpeg',
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
                        color: Colors.transparent,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(
                          'images/FruitsAndVegatables.jpeg',
                        ),
                        radius: 70,
                      ),
                      Text(
                        'Fruits And Vegatables',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      )
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
                        color: Colors.transparent,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Bakery',
                        style: TextStyle(
                          fontSize: 35,
                        ),
                      ),
                      CircleAvatar(
                        backgroundImage: AssetImage(
                          'images/Bakery.jpeg',
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
                        color: Colors.transparent,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(
                          'images/DairyProducts.jpeg',
                        ),
                        radius: 70,
                      ),
                      Text(
                        'Dairy Products',
                        style: TextStyle(
                          fontSize: 25,
                        ),
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
