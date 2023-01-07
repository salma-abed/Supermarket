import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String _name;
  String _email;
  String _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sign Up')),
      body: Form(
        key: _formKey,
        child: Column(children: <Widget>[

          //Name Field.  

          TextFormField(decoration: InputDecoration(labelText:'Name'), validator:(String value){if (value.isEmpty) {return 'Please enter your name';}}, onSaved:(String value){_name = value;}),

          //Email Field.  

          TextFormField(decoration: InputDecoration(labelText:'Email'), validator:(String value){if (value.isEmpty) {return 'Please enter your email';}}, onSaved:(String value){_email = value;}),

          //Password Field.  

          TextFormField(obscureText: true, decoration: InputDecoration(labelText:'Password'), validator:(String value){if (value.isEmpty) {return 'Please enter a password';}}, onSaved:(String value){_password = value;}),

          RaisedButton(onPressed: (){if(_formKey.currentState.validate()){_formKey.currentState.save();}} , child : Text('Submit'))], ), ) ); } }