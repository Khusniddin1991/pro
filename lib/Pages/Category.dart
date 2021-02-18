import 'package:ecommerce/Model/items.dart';
import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {


  List<Items> lists=[
  Items(icon:Icons.book,items:'Books' ),
    Items(icon:Icons.laptop,items:'Laptops' ),
    Items(icon:Icons.videogame_asset_outlined,items:'Games' ),
    Items(icon:Icons.local_movies_outlined,items:'Movies' ),
    Items(icon:Icons.watch,items:'Watches' ),
    Items(icon:Icons.weekend,items:'Weeknds' ),


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: 100 ,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
            shrinkWrap: true,itemCount:lists.length,itemBuilder:(ctx,i){
          Items items=lists[i];
          return Container(
            padding:EdgeInsets.only(top: 10),
            margin: EdgeInsets.only(right: 15),
            height: 160,
            width: 100,
            child: Column(children: [
              Icon(items.icon,size: 40,),
              SizedBox(height: 4,),
              Text(items.items.toString(),style: TextStyle(fontSize: 18),),],
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius:BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  blurRadius: 6,
                  color: Colors.grey
                )

              ]

            ),
          );

        }),
      ),
    );
  }
}
