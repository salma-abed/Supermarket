import 'package:flutter/material.dart';



class ContactUsPage extends StatefulWidget {
  @override
  _ContactUsPageState createState() => _ContactUsPageState();
}

class _ContactUsPageState extends State<ContactUsPage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(title: Text('Contact Us'),backgroundColor: Colors.blue.shade400,),

      body: Center(
        child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('We are happy to hear from you!',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.blue.shade400,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600)
                                  ),
                  Container(
                    height: 150,
                    width: 300,
                    margin: EdgeInsets.all(20),
                    padding: EdgeInsets.all(30),
                    decoration: BoxDecoration(                              
                      color: Colors.transparent,
                                border: Border.all(
                                  color: Colors.blue.shade400,
                                  ),
                                  borderRadius: BorderRadius.all(Radius.circular(30)),
                                  ),
                    child: Center(
                      child: TextField(
  decoration:
  InputDecoration(
    hintText: 'Enter your message here'
  ),
                  ),
                      ),
                    ),
                                      GestureDetector(
                      onTap: () {
                        if ()
                          print('Please enter a text into the field');
                      }
              ),
                ]
              ),
              ),
      ),);
            }
            }

