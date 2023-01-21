import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../widgets/default_form_field.dart';

class PasswordReset extends StatefulWidget {
  @override
  _PasswordResetState createState() => _PasswordResetState();
}

class _PasswordResetState extends State<PasswordReset> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: 20.0),
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'images/background/background5.jpg',
                ),
                fit: BoxFit.fill),
          ),
          child: Padding(
            padding:
                const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 600),
            child: Form(
              key: _formKey,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 280),
                    Container(
                      margin: EdgeInsets.only(left: 20, right: 20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: defaultFormField(
                          validate: validateEmail,
                          controller: _emailController,
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
                    SizedBox(height: 8.0),
                    SizedBox(height: 20.0),
                    Container(
                      alignment: Alignment.center,
                      child: GestureDetector(
                          onTap: () {
                            if (_formKey.currentState!.validate()) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text('Processing Data')),
                              );
                              FirebaseAuth.instance.sendPasswordResetEmail(
                                  email: _emailController.text);
                              context.pop();
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
                              child: const Text('Reset',
                                  style: TextStyle(
                                      color: Color(0xFF191C32),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500)))),
                    ),
                    SizedBox(height: 8.0),
                  ]),
            ),
          ),
        ),
      ),
    );
  }

  _signin(String _email, String _password) async {
    AlertDialog alert = AlertDialog(
      title: Text('Wrong user credintials'),
      content: Text('E-mail or password is incorrect'),
      actions: [
        TextButton(
            child: Text('OK'),
            onPressed: (() {
              context.pop();
            })),
      ],
    );
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: _email, password: _password);

      context.go('/DashBoard');
    } on FirebaseAuthException catch (error) {
      if (error.code == 'user-not-found' || error.code == 'wrong-password') {
        showDialog(
            context: context,
            builder: ((context) {
              return alert;
            }));
      }
    }
  }

  String? validateEmail(String? formEmail) {
    if (formEmail == null || formEmail.isEmpty) {
      return 'Please Enter a valid e-mail';
    } else {
      return null;
    }
  }

  String? passwordValidate(String? formPassword) {
    if (formPassword == null || formPassword.isEmpty) {
      return 'Please Enter your password';
    } else {
      return null;
    }
  }
}
