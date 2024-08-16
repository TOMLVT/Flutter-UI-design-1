import 'package:flutter/material.dart';

class Itemappbar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(25),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              size: 30,
              color: Color(0xFFFF3D00),
            ),
          ),
          Padding(
              padding: EdgeInsets.only(left: 20),
          child:   Text("Product" , style: TextStyle(fontSize: 23 , fontWeight: FontWeight.bold , color: Color(0xFFFF3D00),),),
          ),
        Spacer(),
          Icon(
            Icons.favorite, size: 30, color: Colors.red,
          )
        ],
      ),
    );
  }
}
