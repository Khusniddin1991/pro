import 'package:ecommerce/Model/Product.dart';
import 'package:ecommerce/Model/cartSide.dart';
import 'package:ecommerce/Pages/MyHomePage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Pages/Cart_screens.dart';
import 'Pages/Detail_Page.dart';

void main() {
  runApp(MyApp());
}
class Settings extends ChangeNotifier {
  bool darkModeEnabled;
  Settings({this.darkModeEnabled});
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Products>(
          create: (context) => Products(),
        ),
        ChangeNotifierProvider<Cart>(
          create: (context) => Cart(),
        ),
        ChangeNotifierProvider<Settings>(
          create: (context) => Settings(darkModeEnabled: true),
        ),
      ],
      child:MaterialApp(
          // darkTheme:
          // settings.darkModeEnabled ? ThemeData.dark() : ThemeData.light(),
          debugShowCheckedModeBanner: false,
          title: 'Blogy',
          theme: ThemeData(
            primaryColor: Colors.teal,
            cursorColor: Colors.deepPurple[900],
            accentColor: Colors.deepPurple[900],
            fontFamily: 'Ubuntu',
          ),
          routes: {
            DetailPage.id:(ctx)=>DetailPage(),
            CartScreen.id:(ctx)=>CartScreen(),
          },
          home: MyHomePage(),
        )
      );
  }
}