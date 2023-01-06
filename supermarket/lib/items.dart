import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SuperMarket', 
      home: HomePage(),  
    );
  }
}

class HomePage extends StatelessWidget {

  @override

  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(

         title: Text('SuperMarket'), //title of the app bar 

      ),

       body: Center( //center widget to display items in the supermarket 

        child: Column(

          children: <Widget>[

             Container( //container widget for displaying items in the supermarket 

               height: 200, //height of the container widget 

               width: 400, //width of the container widget 

               decoration: BoxDecoration( //decoration for the container widget to give it a nice look and feel 

                 color: Colors.blue, //color of the container widget  

                 borderRadius: BorderRadius.circular(20), //border radius for the container widget to give it a nice look and feel  

              ),   

              child : ListView.builder (//list view builder to display items in the supermarket  

                itemCount : 10,//number of items in the list view builder  

                itemBuilder : (context , index) {//item builder function to create widgets for each item in list view builder  
                    return ListTile (//list tile widget for each item in list view builder  
                      title : Text('Item $index'),//title text for each item in list view builder  
                      trailing : IconButton (//icon button for each item in list view builder  
                        icon : Icon (Icons.add_shopping_cart),//icon for add shopping cart button   
                        onPressed : (){},//on press action for add shopping cart button   
                      ) ,   
                    );   
                  },
                ),
              ),
            ],
          ),   )  
        );   
      } 
    }