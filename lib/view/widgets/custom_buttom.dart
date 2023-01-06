import 'package:flutter/material.dart';
import 'package:poject_final/constanst.dart';

import 'custom_text.dart';

class CustomButton extends StatelessWidget {
  final String text;

  final Color color;

  final Function onPress;

  CustomButton({
    required this.onPress,
    required this.text,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(primaryColor),
      ),
      child: CustomText(
        text: 'Sign in',
        alignment: Alignment.center,
        color: Colors.white,
      ),
    );
  }
}
