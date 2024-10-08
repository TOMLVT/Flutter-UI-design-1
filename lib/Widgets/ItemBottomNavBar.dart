import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Itembottomnavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        height: 90,
        padding: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 10,
              offset: Offset(0,3)
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("100 VNĐ" , style: TextStyle(fontSize: 25 , fontWeight: FontWeight.bold ,color: Color(0xFFFF3D00)),
            ),
            ElevatedButton.icon(
                onPressed: () {}, 
                icon: Icon(CupertinoIcons.cart_badge_plus , color: Colors.white,),
              label: Text("Add To Cart" , style: TextStyle(fontSize: 16 , fontWeight: FontWeight.bold ,color: Colors.white),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Color(0xFFFF3D00)),
                padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(horizontal: 15 , vertical: 15),
                ),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      )
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
