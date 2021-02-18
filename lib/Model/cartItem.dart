import 'package:ecommerce/Model/cartSide.dart';
import 'package:flutter/material.dart';
class CartItem extends StatelessWidget {

  final String name;
  final String id;
 final String pdItem;
 final double price;
  final int quantity;
    CartItem({this.price,this.id,this.name,this.quantity,this.pdItem});

  @override
  Widget build(BuildContext context) {

    return Card(
      child:ListTile(
        leading: FittedBox(
          child:Text('\$${price}') ,
        ),
        title: Text(name.toString()),
        subtitle: Text('\$${price*quantity}'+"total"),
        trailing: Text(quantity.toString()+'x'),

      ) ,
    );
  }
}
