import 'package:flutter/material.dart';



class ContactUsPage extends StatefulWidget {
  @override
  _ContactUsPageState createState() => _ContactUsPageState();
}

class _ContactUsPageState extends State<ContactUsPage> {

  // Text Controllers for form inputs
  //final TextEditingController nameController = TextEditingController();
  // final TextEditingController emailController = TextEditingController();
  // final TextEditingController messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(title: Text('Contact Us')),

      body: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                          child: TextField(
  decoration: InputDecoration(
    hintText: 'Enter a value'
  ),
                ),
            ),
              ]
            ),
            ),);
            }
            }