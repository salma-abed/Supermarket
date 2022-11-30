  import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void navigateTo(context, Widget screen) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
  }