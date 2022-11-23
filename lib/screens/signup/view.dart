// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../widgets/default_text_field/default_text_field.dart';
import '../../widgets/form_field/default_form_field.dart';
import '../signup/view.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

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
                  height: 20.0,
                ),
                defaultFormField(
                    controller: _emailEditingController,
                    type: TextInputType.emailAddress,
                    validate: (value) {
                      if (value!.isEmpty) {
                        return 'Please Enter Your Username';
                      }
                      return null;
                    },
                    label: 'Username',
                    prefix: Icons.person),
                const SizedBox(
                  height: 30.0,
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
                    controller: _emailEditingController,
                    type: TextInputType.emailAddress,
                    validate: (value) {
                      if (value!.isEmpty) {
                        return 'Please Enter Your Phone number';
                      }
                      return null;
                    },
                    label: 'Phone Number',
                    prefix: Icons.phone),
                const SizedBox(
                  height: 30.0,
                ),
                defaultFormField(
                    controller: _emailEditingController,
                    type: TextInputType.emailAddress,
                    validate: (value) {
                      if (value!.isEmpty) {
                        return 'Password Is Too Short';
                      }
                      return null;
                    },
                    label: 'Password',
                    prefix: Icons.lock_person_outlined),
                const SizedBox(
                  height: 30.0,
                ),
                // defaultFormField(
                //     controller: _passwordEditingController,
                //     type: TextInputType.text,
                //     validate: (value) {
                //       if (value!.isEmpty) {
                //         return 'Password did not match';
                //       }
                //       return null;
                //     },
                //     prefix: Icons.lock_person_outlined,
                //     label: 'Retype Password',
                //     isPassword: true),
                // const SizedBox(
                //   height: 40.0,
                // ),
                const SizedBox(
                  height: 20.0,
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
