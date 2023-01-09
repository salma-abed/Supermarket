import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Items extends StatefulWidget {
  const Items({super.key});
  
  @override
  State<Items> createState() => _ItemsState();
}

class _ItemsState extends State<Items> {

  @override

  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(

         title: Text('Sofa Market'), //title of the app bar 

      ),

       body: Center( //center widget to display items in the supermarket 

        child: Column(

          children: <Widget>[

             Container( //container widget for displaying items in the supermarket 

               height: 300, //height of the container widget 

               width: 500, //width of the container widget 

               decoration: BoxDecoration( //decoration for the container widget to give it a nice look and feel 

                 color: Color.fromARGB(0, 188, 230, 247), //color of the container widget  

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