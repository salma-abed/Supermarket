// ignore: import_of_legacy_library_into_null_safe
import 'package:application/screens/dashboard/dashboard_layout.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../widgets/default_button/default_button.dart';
import '../../widgets/default_text_field/default_text_field.dart';
import '../../widgets/form_field/default_form_field.dart';
import '../signup/view.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var _formKey = GlobalKey<FormState>();
    TextEditingController _emailEditingController = TextEditingController();
    TextEditingController _passwordEditingController = TextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                    heightFactor: 0.5,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: Image.asset('assets/image.png'),
                    )),
                const SizedBox(
                  height: 100.0,
                ),
                defaultFormField(
                    controller: _emailEditingController,
                    type: TextInputType.emailAddress,
                    validate: (value) {
                      if (value!.isEmpty) {
                        return 'Please Enter Your Email';
                      }
                      return null;
                    },
                    label: 'Email',
                    prefix: Icons.email_outlined),
                const SizedBox(
                  height: 30.0,
                ),
                defaultFormField(
                    controller: _passwordEditingController,
                    type: TextInputType.text,
                    validate: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter your Password';
                      }
                      return null;
                    },
                    prefix: Icons.lock_person_outlined,
                    label: 'Password',
                    isPassword: true),
                const SizedBox(
                  height: 40.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: defaultButton(
                      function: () {
                        if (_formKey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Processing Data')),
                          
                          );
                          navigateTo(context, DashBoardLayout());
                        }
                        ;
                      },
                      text: 'Login'),
                ),
                Row(
                  children: [
                    defaultTextField(
                        size: 14.0,
                        text: "Don't have an account?",
                        color: Colors.black),
                    TextButton(
                        onPressed: () {
                          navigateTo(context, SignupScreen());
                        },
                        child: defaultTextField(
                            size: 14.0, text: 'Signup', color: kPrimaryColor)),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void navigateTo(context, Widget screen) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
  }
}
