import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {

  // Create a list of items to be displayed in the cart page. 
  List<String> items = ["Item 1", "Item 2", "Item 3", "Item 4"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Your Cart')),

      body: ListView.builder(itemCount: items.length, itemBuilder: (context, index) {

        // Create a list tile for each item in the list. 
        return ListTile(title: Text(items[index]));

      }),

    );
  }  
}