import 'package:application/screens/login/view.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(SofaMarket());
}
class SofaMarket extends StatelessWidget {
  const SofaMarket({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}