import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController _emailEditingController = TextEditingController();
  TextEditingController _passwordEditingController = TextEditingController();
  TextEditingController _phonenumberEditingController = TextEditingController();
  TextEditingController _usernameEditingController = TextEditingController();
  // String? _name;
  // String? _email;
  // String? _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('images/background/background5.jpg'),
            fit: BoxFit.fill),
      ),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Name',
                      hintStyle: TextStyle(fontWeight: FontWeight.w700),
                      contentPadding: EdgeInsets.only(left: 10),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.transparent),
                      )),
                )),
            Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'E-mail',
                      hintStyle: TextStyle(fontWeight: FontWeight.w700),
                      contentPadding: EdgeInsets.only(left: 10),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.transparent),
                      )),
                )),
            Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Phone Number',
                      hintStyle: TextStyle(fontWeight: FontWeight.w700),
                      contentPadding: EdgeInsets.only(left: 10),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.transparent),
                      )),
                )),
            Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Address',
                      hintStyle: TextStyle(fontWeight: FontWeight.w700),
                      contentPadding: EdgeInsets.only(left: 10),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.transparent),
                      )),
                )),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyle(fontWeight: FontWeight.w700),
                  contentPadding: EdgeInsets.only(left: 10),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Confrim Password',
                  hintStyle: TextStyle(fontWeight: FontWeight.w700),
                  contentPadding: EdgeInsets.only(left: 10),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: GestureDetector(
                  onTap: () {
                    context.go("/DashBoard");
                  },
                  child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white),
                      width: 100,
                      height: 45,
                      child: const Text("Sign-Up",
                          style: TextStyle(
                              color: Color(0xFF191C32),
                              fontSize: 20,
                              fontWeight: FontWeight.w500)))),
            ),
          ],
        ),
      ),
    ));
  }
}
                          //TextFormField(obscureText: true, decoration: InputDecoration(labelText:'Password'), validator:(String value){if (value.isEmpty) {return 'Please enter a password';}}, onSaved:(String value){_password = value;}),
