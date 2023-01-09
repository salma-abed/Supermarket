import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mobileproject/screens/categries.dart';

class inputs extends StatelessWidget {
  const inputs({
    Key? key,
    this.height,
    this.margin,
    this.padding,
    this.text,
    this.fonts,
    this.fontSize,
    this.img,
    this.radius,
  }) : super(key: key);
  final double? height;
  final double? margin;
  final double? padding;
  final String? text;
  final FontWeight? fonts;
  final double? fontSize;
  final ImageProvider? img;
  final double? radius;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      margin: EdgeInsets.all(margin!),
      padding: EdgeInsets.all(padding!),
      decoration: BoxDecoration(
          color: Color(0xffe0fbfc).withOpacity(0.55),
          border: Border.all(
            color: Colors.transparent,
          ),
          borderRadius: BorderRadius.all(Radius.circular(30))),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Category())); //goroute
            },
            child: Text(
              text!,
              style: TextStyle(
                fontWeight: fonts,
                fontSize: fontSize,
              ),
            )),
        CircleAvatar(
          backgroundImage: img,
          radius: radius,
        ),
      ]),
    );
  }
}
