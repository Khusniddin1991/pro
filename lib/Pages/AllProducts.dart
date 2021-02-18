
import 'package:ecommerce/Model/Product.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Pdts.dart';


class AllProducts extends StatelessWidget{
  static final String id='AllProducts';


  Widget build(BuildContext context){

    final product=Provider.of<Products>(context);

    return GridView.builder(
      shrinkWrap: true,
      itemCount:product.items.length ,
      physics: ScrollPhysics(),
      scrollDirection: Axis.vertical,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:2 ), itemBuilder:(ctx,i){
        return ChangeNotifierProvider.value(value:product.items[i],
          child: Pdts(imgUrl: product.items[i].imgUrl,text:product.items[i].name,descreption: product.items[i].description,prices:product.items[i].price,),);
    });

  }


}
