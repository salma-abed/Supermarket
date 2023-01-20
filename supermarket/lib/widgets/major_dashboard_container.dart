import 'package:flutter/material.dart';

class MajorItemContainer extends StatelessWidget {
  const MajorItemContainer({
    Key? key,
    required this.cat,
  }) : super(key: key);

  final String cat;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, top: 10),
      child: Column(children: [
        Text(
          textAlign: TextAlign.center,
          cat,
          style: TextStyle(
            fontSize: 30,
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
      ]),
    );
  }
}
