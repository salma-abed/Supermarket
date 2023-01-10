import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../widgets/default_form_field.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController _emailEditingController = TextEditingController();
  TextEditingController _passwordEditingController = TextEditingController();
  TextEditingController _phonenumberEditingController = TextEditingController();
  TextEditingController _nameEditingController = TextEditingController();

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
              child: defaultFormField(
                  validate: (value) {
                    if (value!.isEmpty) {
                      return 'Please Enter Your Username';
                    }
                    return null;
                  },
                  controller: _nameEditingController,
                  type: TextInputType.name,
                  prefix: Icons.person,
                  hint: 'Name',
                  hintstyle: TextStyle(fontWeight: FontWeight.w700),
                  contentpadding: EdgeInsets.only(left: 10),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.transparent),
                  )),
            ),
            Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child:  defaultFormField(
                  validate: (value) {
                    if (value!.isEmpty) {
                      return 'Please Enter a valid e-mail';
                    }
                    return null;
                  },
                  controller: _emailEditingController,
                  type: TextInputType.name,
                  prefix: Icons.email,
                  hint: 'E-mail',
                  hintstyle: TextStyle(fontWeight: FontWeight.w700),
                  contentpadding: EdgeInsets.only(left: 10),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.transparent),
                  )),
                ),
            Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: defaultFormField(
                  validate: (value) {
                    if (value!.isEmpty) {
                      return 'Please a phone number';
                    }
                    return null;
                  },
                  controller: _phonenumberEditingController,
                  type: TextInputType.name,
                  prefix: Icons.phone,
                  hint: 'Phone Number ',
                  hintstyle: TextStyle(fontWeight: FontWeight.w700),
                  contentpadding: EdgeInsets.only(left: 10),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.transparent),
                  )),
                ),
            Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: 
                defaultFormField(
                  validate: (value) {
                    if (value!.isEmpty) {
                      return 'Please Enter Your Address';
                    }
                    return null;
                  },
                  controller: _nameEditingController,
                  type: TextInputType.name,
                  prefix: Icons.home,
                  hint: 'Address',
                  hintstyle: TextStyle(fontWeight: FontWeight.w700),
                  contentpadding: EdgeInsets.only(left: 10),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.transparent),
                  )),
                ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: defaultFormField(
                  validate: (value) {
                    if (value!.isEmpty) {
                      return 'Please Enter a password';
                    }
                    return null;
                  },
                  controller: _passwordEditingController,
                  type: TextInputType.name,
                  prefix: Icons.lock,
                  hint: 'Password',
                  hintstyle: TextStyle(fontWeight: FontWeight.w700),
                  contentpadding: EdgeInsets.only(left: 10),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.transparent),
                  )),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: 
              defaultFormField(
                  validate: (value) {
                    if (value!.isEmpty) {
                      return 'Please Enter Your Username';
                    }
                    return null;
                  },
                  controller: _emailEditingController,
                  type: TextInputType.name,
                  prefix: Icons.lock,
                  hint: 'Confirm Password',
                  hintstyle: TextStyle(fontWeight: FontWeight.w700),
                  contentpadding: EdgeInsets.only(left: 10),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.transparent),
                  )),
            ),
            Container(
              alignment: Alignment.center,
              child: GestureDetector(
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Processing Data')),
                      );
                      context.go("/DashBoard");
                    }
                    ;
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
