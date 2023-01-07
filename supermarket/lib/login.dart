import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
      body: Container(decoration: BoxDecoration(
    image: DecorationImage(
        image: AssetImage('images/background/background5.jpg'),
        fit: BoxFit.fill),
  ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(children: <Widget>[
            TextField(controller: _usernameController, decoration: InputDecoration(hintText: 'Username')),
            SizedBox(height: 8.0), // Add some space between fields. 

            TextField(controller: _passwordController, obscureText: true, decoration: InputDecoration(hintText:'Password')),

            SizedBox(height: 8.0), // Add some space between fields.

            Container(
                    alignment: Alignment.center,
                    child: GestureDetector(
                        onTap: () {context.go("/DashBoard");},
                        child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.transparent),
                            width: 100,
                            height: 45,
                            child: const Text("LogIn",
                                style: TextStyle(
                                    color: Color(0xFF191C32),
                                    fontFamily: 'Poppins',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500)))),
                  ),
Container(
                    alignment: Alignment.center,
                    child: GestureDetector(
                        onTap: () {context.go("/Signup");},
                        child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.transparent),
                            width: 100,
                            height: 45,
                            child: const Text("Signup",
                                style: TextStyle(
                                    color: Color(0xFF191C32),
                                    fontFamily: 'Poppins',
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500)))),
                  ),
          ]), 

        ),
      ), 

    );  

  }  
}