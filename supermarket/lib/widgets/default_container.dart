import 'package:flutter/material.dart';

Widget defaultContainer({
  W,
  H,
  fontsize,
  FontWeight fontWeight = FontWeight.w400,
  Color color = const Color.fromARGB(0, 188, 230, 24),
  BorderRadius radius = const BorderRadius.all(Radius.circular(30)),
  Margin,
  Padding,
  required Widget child,
  BoxDecoration? decoration,
}) =>
    Container(
      padding: EdgeInsets.only(left: 20, top: 5),
      child: child,
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: color,
        border: Border.all(
          color: color,
        ),
        borderRadius: radius,
      ),
    );
