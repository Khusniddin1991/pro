import 'package:ecommerce/Model/cartItem.dart';
import 'package:ecommerce/Model/cartSide.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  static final id='CartScreen';
  @override
  Widget build(BuildContext context) {
    final car=Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(

        title: Text("My Cart",style: TextStyle(color: Colors.white),),centerTitle: true,
        backgroundColor: Colors.teal,
        
      ),
      body: Container(
        height:MediaQuery.of(context).size.height,
        child: ListView.builder(
        itemCount:car.items.length ,
          itemBuilder:(ctx,i)=>CartItem(id: car.items.values.toList()[i].id,
          price: car.items.values.toList()[i].price,
            quantity: car.items.values.toList()[i].quantity,
            pdItem: car.items.keys.toList()[i],
            name: car.items.values.toList()[i].name ,

          )),),
    );
  }
}
