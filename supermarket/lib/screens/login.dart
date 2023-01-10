import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../widgets/default_form_field.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/background/background5.jpg'),
              fit: BoxFit.fill),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, right: 16.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 150,
                  width: 150,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            'images/grocery-cart.png',
                          ),
                          fit: BoxFit.fill)),
                ),
                SizedBox(height: 100),
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
                      controller: _emailController,
                      type: TextInputType.emailAddress,
                      prefix: Icons.email,
                      hint: 'Email Address',
                      hintstyle: context,
                      contentpadding: EdgeInsets.only(left: 10),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.transparent),
                      )),
                ),
                SizedBox(height: 8.0),
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: defaultFormField(
                    controller: _passwordController,
                    type: TextInputType.text,
                    prefix: Icons.lock,
                    validate: (value) {
                      if (value!.isEmpty) {
                        return 'Please Enter Your Password';
                      }
                      return null;
                    },
                    hint: 'Password',
                  ),
                ),
                SizedBox(height: 20.0),
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
                      },
                      child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.white),
                          width: 100,
                          height: 45,
                          child: const Text("Login",
                              style: TextStyle(
                                  color: Color(0xFF191C32),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500)))),
                ),
                SizedBox(height: 8.0),
                Container(
                  alignment: Alignment.center,
                  child: GestureDetector(
                      onTap: () {
                        context.go("/Signup");
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Don\'t have an account?',
                            style: TextStyle(
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                              color: Color(0xffee6c4d),
                            ),
                          ),
                          Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              width: 100,
                              height: 45,
                              child: const Text("SignUp",
                                  style: TextStyle(
                                      color: Color(0xFF191C32),
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500))),
                        ],
                      )),
                ),
              ]),
        ),
      ),
    );
  }
}
