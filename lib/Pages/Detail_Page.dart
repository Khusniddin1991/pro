import 'package:ecommerce/Model/Product.dart';
import 'package:ecommerce/Model/cartSide.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



class DetailPage extends StatelessWidget {
  static final String id='DetailPage';
  String title;
  double price;
  String descreption;
  String img;

  DetailPage({this.title,this.price,this.descreption,this.img});

  @override
  Widget build(BuildContext context) {
    final ca=Provider.of<Product>(context);
    final cas=Provider.of<Cart>(context);
    // final productId=ModalRoute.of(context).settings.arguments;
    // final loadProduct=Provider.of<Products>(context).findById(productId);

    return Scaffold(
      appBar: AppBar(title: Text(title.toString()),centerTitle: true,),
      body:ListView(
        children: [
          Container(
            padding: EdgeInsets.only(top: 10),
            height: 300,
            width: 250,
            child: ClipRRect(
              child:Image.network(img),),
          ),
          SizedBox(height: 10,),
        Column(children: [
          Text('Price:\$'+price.toString(),style: TextStyle(fontSize: 23),),
          SizedBox(height: 10,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text(descreption.toString())),
          SizedBox(height: 30,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 70),
            height: 60,
              width: double.infinity,

              child: FlatButton(onPressed:(){
                cas.addItem(ca.id, ca.name, ca.price);
              }, child:Text('Add cart')),
            decoration: BoxDecoration(
                color: Colors.teal,
              borderRadius: BorderRadius.circular(30)
            ),

          )


        ],)
        ],
      )

    );
  }
}
