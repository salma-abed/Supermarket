// ignore_for_file: unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';



class ContactUsPage extends StatefulWidget {
  @override
  _ContactUsPageState createState() => _ContactUsPageState();
}

class _ContactUsPageState extends State<ContactUsPage> {
TextEditingController inputController = TextEditingController();

void dispose() {
    // Clean up the controller when the widget is disposed.
    inputController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(title: Text('Contact Us'),backgroundColor: Colors.blue.shade400,),

      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
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
                        borderRadius: BorderRadius.circular(30),
                                  ),
                    child: Center(
                      child: TextField(
                        controller: inputController,
                          decoration:InputDecoration(
                            hintText: 'Enter your message here'
                          ),
                  ),
                      ),
                    ),
                    SizedBox(
                      height:20
                    ),
                    GestureDetector(
                      
                      onTap: (){
                        if(inputController.text == null || inputController.text == ''){
                          Text("please enter a text.");
                        }else{
                          context.go('/DashBoard');
                        }
                        },
                      child: Container(
                                width: 100,
                                height: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.blue.shade400,
                                ),
                                child: Center(
                                  child: Text(
                          'Submit',
                          style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                                ),
                      ),
                      
                      ),
                    
                                      
                ]
              ),
              ),
      ),);
            }
            }

