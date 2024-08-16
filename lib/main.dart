import 'package:flutter/material.dart';
import 'package:shopping_app_ecomerece/pages/CartPage.dart';
import 'package:shopping_app_ecomerece/pages/Homepage.dart';
import 'package:shopping_app_ecomerece/pages/ItemPage.dart';

void main () => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      routes: {
        "/" : (context) => Homepage(),
        "cartPage" : (context) => Cartpage(),
        "itemPage" : (context) => Itempage(),
      },
    );
  }
}
