import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Address add'),),body: Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
            TextFormField(
            decoration: const InputDecoration(
              hintText: 'Enter your street name',
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
              hintText: 'Enter your building number',
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
              hintText: 'Enter your floor number',
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
              hintText: 'Enter your area',
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
                // Validate will return true if the form is valid, or false if
                // the form is invalid.
                if (_formKey.currentState!.validate()) {
                  // Process data.
                }
              },
              child: const Text('Add'),
            ),ElevatedButton(
              onPressed: () {
                // Validate will return true if the form is valid, or false if
                // the form is invalid.
                if (_formKey.currentState!.validate()) {
                  // Process data.
                }
              },
              child: const Text('Cancel'),
            ),],) 
          ),
          
        ],
      ),
    ) ,);
  
  }
}