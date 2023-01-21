import 'package:flutter/material.dart';
 import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:mobileproject/serivces/users_services.dart';
import '../models/user.dart';

class Account extends ConsumerStatefulWidget {
  const Account({super.key});

  @override
  ConsumerState<Account> createState() => _AccountState();
}

class _AccountState extends ConsumerState<Account> {
   final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Account'),),body: Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
            TextFormField(
            decoration: const InputDecoration(
              hintText: 'Enter your name',
            ),
            // validator: (String? value) {
            //   if (value == null || value.isEmpty) {
            //     return 'Please enter some text';
            //   }
            //   return null;
            // },
          ),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Enter your email',
            ),
            // validator: (String? value) {
            //   if (value == null || value.isEmpty) {
            //     return 'Please enter some text';
            //   }
            //   return null;
            // },
          ),
            TextFormField(
            decoration: const InputDecoration(
              hintText: 'Enter your password',
            ),
            // validator: (String? value) {
            //   if (value == null || value.isEmpty) {
            //     return 'Please enter some text';
            //   }
            //   return null;
            // },
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Row( mainAxisAlignment: MainAxisAlignment.spaceAround, children: [ElevatedButton(
              onPressed: () {
              
                 String newame = nameController.text;
                 String newEmail = emailController.text;
                 String newPassword = passwordController.text;
            // if (newame.isEmpty) {
            //   newame = ref.watch(curentUserProvider).value!.name;
            // }
            // if (newEmail.isEmpty) {
            //   newEmail = ref.watch(curentUserProvider).value!.email;
            // }
            // if (newPassword.isEmpty) {
            //   newPassword = ref.watch(curentUserProvider).value!.password;
            // }
            // // context.go('/EditProfile');
            // ref.read(curentUserProvider).value!.email = newEmail;
            // ref.read(curentUserProvider).value!.name = newame;
            // ref.read(curentUserProvider).value!.password = newPassword;
            // User_Service().UpdateAdmin(
            //     userId: ref.watch(curentUserProvider).value!.userid,
            //     name: newame,
            //     email: newEmail,
            //     password: newPassword);
            //   context.go('/dashboard');


                if (_formKey.currentState!.validate()) {
                  // Process data.
                }
              },
              child: const Text('Edit'),
            ),ElevatedButton(
              onPressed: () {
                // Validate will return true if the form is valid, or false if
                // the form is invalid.
                       
                if (_formKey.currentState!.validate()) {
                  // Process data.
                }
              },
              child: const Text('Delete'),
            ),],) 
          ),
          
        ],
      ),
    ) ,);
  
  }
}