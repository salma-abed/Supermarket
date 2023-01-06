import 'package:flutter/material.dart';

class CheckoutPage extends StatefulWidget {
  @override
  _CheckoutPageState createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {

  String _name;
  String _address;

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(title: Text('Checkout'),),

      body: SingleChildScrollView(

        child: Column(

          children: <Widget>[

            Padding(padding: EdgeInsets.all(20),),

            TextField(
              decoration: InputDecoration(labelText: 'Name'),
              onChanged: (String value) { setState(() => _name = value); },
            ),

            Padding(padding: EdgeInsets.all(10)),

            TextField(
              decoration: InputDecoration(labelText:'Address'),
              onChanged:(String value) { setState(() => _address = value); },  
            ),

            Padding (padding :EdgeInsets.all (10)),

            RaisedButton (onPressed : (){}, child : Text('Submit')) ,   // Submit button to place order after entering the details.   								     // This can be modified to add order confirmation page in future.    

          ],   // End of widget list for Column class.   

        ),   // End of column widget.   	    

      ),   // End of singlechildscrollview widget.   	    

    );   // End of scaffold widget.    	    

  }   // End of build method definition.   	    
}