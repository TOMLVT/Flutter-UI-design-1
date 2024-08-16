import 'package:flutter/material.dart';
import 'package:shopping_app_ecomerece/Widgets/CartAppBar.dart';
import 'package:shopping_app_ecomerece/Widgets/CartBottomNavBar.dart';
import 'package:shopping_app_ecomerece/Widgets/CartItemSample.dart';

class Cartpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Cartappbar(),
          Container(
            height: 700,
            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              color: Color(0xFFEDECF2),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(35),
                  topLeft: Radius.circular(35),
              )
            ),
            child: Column(
              children: [
                Cartitemsample(),

                Container(
                  margin: EdgeInsets.symmetric(vertical: 15 , horizontal: 15),
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFFF3D00),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          "Add Coupon Code" ,
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFFFF3D00)),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: CartBottomNavbar(),
    );
  }
}
