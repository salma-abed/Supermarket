import 'package:flutter/material.dart';

class ItemSubContainer extends StatelessWidget {
  const ItemSubContainer({
    Key? key,
    required this.img,
    required this.subCat,
  }) : super(key: key);

  final String img;
  final String subCat;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Column(children: [
        CircleAvatar(
          backgroundImage: AssetImage(
            img,
          ),
          radius: 40,
        ),
        Text(
          subCat,
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ]),
    );
  }
}
