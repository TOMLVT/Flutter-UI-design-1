import 'package:flutter/material.dart';
class Itemwidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.68,
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      children: [
        for (int i = 2 ; i < 8 ; i ++)
        Container(
          padding: EdgeInsets.only(left: 15 , right: 15 , top: 10),
          margin: EdgeInsets.symmetric(vertical: 8 , horizontal: 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Color(0xFFFF3D00),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      "-50%", style: TextStyle(fontSize: 14 , color: Colors.white , fontWeight: FontWeight.bold),
                    ),
                  ),
                  Icon(
                    Icons.favorite_border,
                    color: Colors.red,
                  )
                ],
              ),
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, "itemPage");
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Image.asset("images/$i.png" , height: 120, width: 120,),
                ),
              ),
              Container(
                padding: EdgeInsets.only(bottom: 8),
                alignment: Alignment.centerLeft,
                child: Text("Sản Phẩm" , style: TextStyle(fontSize: 18 , color: Color(0xFF263238), fontWeight: FontWeight.bold),),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text("Mô tả sản phẩm" , style: TextStyle(fontSize: 15, color: Color(0xFF263238)
                ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "100 VNĐ" , style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold , color: Color(0xFFFF1744)
                      ),
                      ), 
                      Icon(
                        Icons.shopping_cart_checkout , color: Color(0xFFBF360C),
                      )
                    ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
