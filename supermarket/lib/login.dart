import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(children: <Widget>[
          TextField(controller: _usernameController, decoration: InputDecoration(hintText: 'Username')),
          SizedBox(height: 8.0), // Add some space between fields. 

          TextField(controller: _passwordController, obscureText: true, decoration: InputDecoration(hintText:'Password')),

          SizedBox(height: 8.0), // Add some space between fields.

          Container(
                  alignment: Alignment.center,
                  child: GestureDetector(
                      onTap: () {},
                      child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.grey.withOpacity(0.30)),
                          width: 100,
                          height: 45,
                          child: const Text("Done",
                              style: TextStyle(
                                  color: Color(0xFF191C32),
                                  fontFamily: 'Poppins',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500)))),
                ),

        ]), 

      ), 

    );  

  }  
}