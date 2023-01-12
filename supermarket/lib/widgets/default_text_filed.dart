import 'package:flutter/material.dart';

Widget defaultTextField({
  FontWeight fontWeight = FontWeight.normal,
  required double size,
  required String text,
  required Color color,
  TextAlign? aligment,
  double? height = 1,
  int? maxLines = 1,
  TextDecoration? decoration,
  TextOverflow? overflow,
}) =>
    Text(text,
        maxLines: maxLines,
        overflow: overflow ?? null,
        textAlign: aligment,
        style: TextStyle(
          fontSize: size,
          fontWeight: fontWeight,
          color: color,
          height: height,
          decoration: decoration ?? null,
        )
        );
