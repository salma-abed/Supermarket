import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mobileproject/models/user.dart';
import '../serivces/users_services.dart';
import '../models/user.dart';
import '../widgets/default_form_field.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _nameEditingController = TextEditingController();

  TextEditingController _emailEditingController = TextEditingController();
  TextEditingController _phonenumberEditingController = TextEditingController();
  TextEditingController _addressEditingController = TextEditingController();

  TextEditingController _passwordEditingController = TextEditingController();
  TextEditingController _repeatepasswordEditingController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:  StreamBuilder<List<usermodel>>( 
          stream: usersservices.readUsers(),
          builder: (context, snapshot) {
            if(snapshot.hasData){
              final users=snapshot.data!;
            }
            return Container(
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
                  child: defaultFormField(
                      validate: (value) {
                        if (value!.isEmpty) {
                          return 'Please Enter your E-mail';
                        }
                        if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                          return 'Please Enter a valid E-mail';
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
                          return 'Please your Phone Number';
                        }
                        return null;
                      },
                      controller: _phonenumberEditingController,
                      type: TextInputType.phone,
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
                  child: defaultFormField(
                      validate: (value) {
                        if (value!.isEmpty) {
                          return 'Please Enter Your Address';
                        }
                        return null;
                      },
                      controller: _addressEditingController,
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
                          return 'Please Enter your Password';
                        } else if (value.length < 8) {
                          return 'The password contain at least 8 characters';
                        } else if (!RegExp(r'[A-Z]').hasMatch(value)) {
                          return 'The password contain uppercase letter';
                        } else if (!RegExp(r'[0-9]').hasMatch(value)) {
                          return 'The password contain number';
                        } else if (!RegExp(r'[a-z]').hasMatch(value)) {
                          return 'The password contain lowercase letter';
                        } else if (!RegExp(r'[!@#$%^&*(),.?":{}|<>]')
                            .hasMatch(value)) {
                          return 'The password contain special symbol';
                        }
                        return null;
                      },
                      controller: _passwordEditingController,
                      isPassword: true,
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
                  child: defaultFormField(
                      validate: (value) {
                        if (value!.isEmpty) {
                          return 'Please repeat your Password';
                        }
                        return null;
                      },
                      controller: _repeatepasswordEditingController,
                      isPassword: true,
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
                          FirebaseAuth.instance
                              .createUserWithEmailAndPassword(
                                  email: _emailEditingController.text,
                                  password: _passwordEditingController.text)
                              .then((value) {
                            print('New Account is created');
                            context.go('/DashBoard');
                          }).onError((error, stackTrace) {
                            print('Error ${error.toString()}');
                          });
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
            );
          }
        )
    );
    
  }
  // Stream<List<usermodel>> readUsers() => FirebaseFirestore.instance
  //     .collection('users')
  //     .snapshots()
  //     .map((snapshot) =>
  //         snapshot.docs.map((doc) => User.fromJson(doc.data())).toList());

  // Future createUser(usermodel user) async {
  //   final docUser = FirebaseFirestore.instance.collection('users').doc();

  //   user.id = docUser.id;
  //   final json = user.toJson();
  //   await docUser.set(json);
  // }
}


