import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:poject_final/constanst.dart';
import 'package:poject_final/view/auth/second_screen.dart';
import 'package:poject_final/view/widgets/custom_button_social.dart';
import 'package:poject_final/view/widgets/custom_text.dart';
import 'package:poject_final/view/widgets/custome_text_form_field.dart';

import '../widgets/custom_buttom.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 50, right: 20, left: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: 'Welcome',
                    fontSize: 30,
                  ),
                  CustomText(
                    color: primaryColor,
                    text: 'Signup',
                    fontSize: 18,
                  ),
                ],
              ),
              CustomText(
                  text: 'Sign in to continue',
                  fontSize: 14,
                  color: Colors.grey),
              const SizedBox(height: 30),
              CustomTextFormField(
                text: 'Email',
                hint: 'any@gmail.com',
                onSave: (value) {},
                validator: (value) {},
              ),
              const SizedBox(
                height: 40,
              ),
              CustomTextFormField(
                text: 'Password',
                hint: '**********',
                onSave: (value) {},
                validator: (value) {},
              ),
              const SizedBox(
                height: 30,
              ),
              CustomText(
                text: 'Forgot Password ?',
                fontSize: 14,
                alignment: Alignment.topRight,
              ),
              const SizedBox(
                height: 20,
              ),
              CustomButton(
                color: primaryColor,
                onPress: () {
                  Get.to(SecondScreen());
                },
                text: 'Sign in',
              ),
              const SizedBox(
                height: 20,
              ),
              CustomText(
                text: '-OR-',
                fontSize: 20,
                alignment: Alignment.center,
              ),
              const SizedBox(
                height: 20,
              ),
              CustomButtonSocial(
                  text: 'Sign in with Facebook',
                  imageName: 'assets/images/facebook.png',
                  onPress: () {}),
              const SizedBox(
                height: 20,
              ),
              CustomButtonSocial(
                  text: 'Sign in with Google',
                  imageName: 'assets/images/google.png',
                  onPress: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
