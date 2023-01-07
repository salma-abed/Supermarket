import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'dashboard.dart';

class loadingScreen extends StatelessWidget {
  const loadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/background/background5.jpg'),
              fit: BoxFit.fill),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              Container(
                height: 150,
                width: 150,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(
                          'images/delivery1.png',
                        ),
                        fit: BoxFit.scaleDown)),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      padding: EdgeInsets.only(left: 20),
                      decoration: BoxDecoration(
                          color: Color(0xffe0fbfc).withOpacity(0.55),
                          border: Border.all(
                            color: Colors.transparent,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Center(
                        child: Text(
                          'WE ARE NOW DELEIVERING',
                          style: TextStyle(
                            // fontWeight: FontWeight.bold,
                            fontSize: 50,
                            color: Color(0xffee6c4d),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Save time, Shop online',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Color(0xff023047)),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: double.infinity,
                height: 200,
                margin: EdgeInsets.only(left: 10, right: 10),
                padding: EdgeInsets.only(left: 20),
                decoration: BoxDecoration(
                    color: Color(0xffe0fbfc).withOpacity(0.55),
                    border: Border.all(
                      color: Colors.transparent,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.check_circle_outlined,
                          size: 40,
                          color: Color(0xffee6c4d),
                        ),
                        Text(
                          ' Vegetables ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.check_circle_outlined,
                          size: 40,
                          color: Color(0xffee6c4d),
                        ),
                        Text(
                          ' Fruits ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.check_circle_outlined,
                          size: 40,
                          color: Color(0xffee6c4d),
                        ),
                        Text(
                          ' Healthy Food ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => DashBoard()));
                  },
                  child: Text(
                    'Continue',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                      color: Color(0xff023047),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}