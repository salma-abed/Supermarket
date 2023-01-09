import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: Center(
      //   child: Text('Login',
      //   style: TextStyle(color: Color.fromARGB(255, 6, 11, 51),
      //                     fontFamily: 'Poppins',
      //                     fontSize: 30,
      //                     fontWeight: FontWeight.w500)),
      // ) ,
      // backgroundColor: Color.fromARGB(255, 60, 172, 247),
      // //centerTitle: center,
      // ),
      body: Container(decoration: BoxDecoration(
    image: DecorationImage(
        image: AssetImage('images/background/background5.jpg'),
        fit: BoxFit.fill),
  ),
        child: Padding(
          padding: const EdgeInsets.only(left:16.0,right:16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
      Container(
          height: 150,
          width: 150,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    'images/grocery-cart.png',
                  ),
                  fit: BoxFit.fill)),
        ),
        SizedBox(height: 100),
            Container(
              margin:EdgeInsets.only(left:20,right:20),
              decoration:BoxDecoration(
                color:Colors.white,
                borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    hintText: 'Email',
                    hintStyle: TextStyle(fontWeight: FontWeight.w700),
                    contentPadding: EdgeInsets.only(left:10),
                    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                    borderSide:BorderSide( color: Colors.transparent) ,
                    )
                    ),
                    )
                    ),
            SizedBox(height: 8.0), // Add some space between fields. 
            Container(
              margin:EdgeInsets.only(left:20,right:20),
              decoration:BoxDecoration(
                color:Colors.white,
                borderRadius: BorderRadius.circular(10),
                ),
              child: TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  hintText:'Password',
                  hintStyle: TextStyle(fontWeight:FontWeight.w700),
                  contentPadding: EdgeInsets.only(left:10),
                  focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.transparent),
                  ),
              ),
              ),
            ),
            SizedBox(height: 20.0), // Add some space between fields.
            Container(
                    alignment: Alignment.center,
                    child: GestureDetector(
                        onTap: () {context.go("/DashBoard");},
                        child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white),
                            width: 100,
                            height: 45,
                            child: const Text("Login",
                                style: TextStyle(
                                    color: Color(0xFF191C32),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500)))),
                  ),
                  SizedBox(height: 8.0),
            Container(
                    alignment: Alignment.center,
                    child: GestureDetector(
                        onTap: () {context.go("/Signup");},
                        child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white),
                            width: 100,
                            height: 45,
                            child: const Text("SignUp",
                                style: TextStyle(
                                    color: Color(0xFF191C32),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500)))),
                  ),
          ]), 

        ),
      ), 

    );  

  }  
}