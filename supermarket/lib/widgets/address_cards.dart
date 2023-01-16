import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobileproject/dummydata.dart';

import '../models/address.dart';

class addresscard extends StatefulWidget {
  const addresscard({super.key,required this.bib});
final Address bib;
  @override
  State<addresscard> createState() => _addresscardState();
}

class _addresscardState extends State<addresscard> {
  @override
  Widget build(BuildContext context) {
    return ListTile(title: Text(widget.bib.streetname),subtitle: Text(widget.bib.buildingno),trailing: Row(children: [IconButton(onPressed:() {}, icon: Icon(Icons.edit)),IconButton(onPressed:() {}, icon: Icon(Icons.delete))]),);
    
  }
}