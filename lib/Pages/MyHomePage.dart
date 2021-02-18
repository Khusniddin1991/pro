import 'package:ecommerce/Pages/Category.dart';
import 'package:flutter/material.dart';

import 'AllProducts.dart';
import 'Cart_screens.dart';

class MyHomePage extends StatefulWidget {
  static final String id='MyHomePage';
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white ,
      drawer: Drawer(),
      appBar: AppBar(actions: [Padding(
        padding: const EdgeInsets.only(right: 5),
        child: IconButton(icon:Icon(Icons.shopping_cart,size: 30,), onPressed: (){
          Navigator.pushNamed(context,CartScreen.id);
        }),
      )]
       , title: Text('Flutter E-com'),centerTitle: true,),
      body:ListView(children: [
        Padding(
          padding:EdgeInsets.symmetric(vertical: 10,horizontal: 140),
          child: Text('Categories',style: TextStyle(color: Colors.black,fontSize:20,fontWeight: FontWeight.bold),),
        ),SizedBox(height: 10,),
        Container(
            height:100,child: Category()),SizedBox(height: 10,),
        Padding(
          padding:EdgeInsets.symmetric(vertical: 10,horizontal: 150),
          child: Text('Products',style: TextStyle(color: Colors.black,fontSize:20,fontWeight: FontWeight.bold),),
        ),
        Container(
          margin: EdgeInsets.only(bottom: 10),
            child: AllProducts())

      ],) ,

    );
  }
}
