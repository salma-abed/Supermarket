import 'package:flutter/material.dart';
import 'package:mobileproject/dummydata.dart';

import '../widgets/address_cards.dart';

class addresslist extends StatefulWidget {
   addresslist({super.key});
final addressdata variablename=addressdata();
  @override
  State<addresslist> createState() => _addresslistState();
}

class _addresslistState extends State<addresslist> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Account'),),body: 
           ListView(
            children: [ListView.builder(itemCount: widget.variablename.data!.length ,itemBuilder: ((context, index) {
              return addresscard(bib: widget.variablename.data![index],);
            })),Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row( mainAxisAlignment: MainAxisAlignment.spaceAround, children: [ElevatedButton(
                onPressed: () {
                  // Validate will return true if the form is valid, or false if
                  // the form is invalid.
                  if (_formKey.currentState!.validate()) {
                    // Process data.
                  }
                },
                
          
                child: const Text('Edit'),
              ),
              ],) 
            ),]
          ),
          
        
        
      );
  
  }
}