import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String? _name;
  String? _email;
  String? _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sign Up')),
      body: Container(
        decoration: BoxDecoration(
    image: DecorationImage(
        image: AssetImage('images/background/background5.jpg'),
        fit: BoxFit.fill),
  ),
        child: Form(
          key: _formKey,
          
          child: Column(children: <Widget>[

            //Name Field.  

            TextFormField(decoration: InputDecoration(labelText:'Name')),

            //Email Field.  

            TextFormField(decoration: InputDecoration(labelText:'Email'),),

            //Password Field.  


            TextFormField(obscureText: true, decoration: InputDecoration(labelText:'Password')),

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
                  ),], ), ),
      ) ); } }
                          //TextFormField(obscureText: true, decoration: InputDecoration(labelText:'Password'), validator:(String value){if (value.isEmpty) {return 'Please enter a password';}}, onSaved:(String value){_password = value;}),
