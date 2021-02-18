import 'package:ecommerce/Model/Product.dart';
import 'package:ecommerce/Model/cartSide.dart';
import 'package:ecommerce/Pages/Detail_Page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class Pdts extends StatelessWidget {
  String imgUrl,text,descreption;
  double prices;

  Pdts({this.text,this.imgUrl,this.descreption,this.prices});

  @override
  Widget build(BuildContext context) {
    final cars=Provider.of<Cart>(context);
    final ca=Provider.of<Product>(context);
    return Scaffold(
      body: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (ctx)=>DetailPage(title: text,img: imgUrl,descreption:descreption ,price: prices,)));
        },
        child: Container(
          margin: EdgeInsets.only(right: 22),
          padding: EdgeInsets.all(15),
            child: GridTile(child:Image.network(imgUrl),
              footer:GridTileBar(
                title:Text(text),
                trailing:Consumer<Cart>(builder:(ctx,value,child){
                  return IconButton(icon: Icon(Icons.shopping_cart_outlined),onPressed: (){
                    value.addItem(ca.id, ca.name, ca.price);
                  },);
                }),
                backgroundColor: Colors.deepPurple,
              ) ,
            )),
      ),
    );
  }
}



