import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app_ecomerece/Widgets/CategoriesWidget.dart';
import 'package:shopping_app_ecomerece/Widgets/HomeAppBar.dart';
import 'package:shopping_app_ecomerece/Widgets/ItemWidget.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: [
            Homeappbar(),
            Container(
              // height: 500,
              padding: EdgeInsets.only(top: 15),
              decoration: BoxDecoration(
                color: Color(0xFFEDECF2),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                )
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 5),
                          height: 50,
                          width: 300,
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Tìm kiếm mặt hàng...",
                            ),
                          ),
                        ),
                        Spacer(),
                        Icon(
                          Icons.camera_alt,
                          size: 27,
                          color:  Color(0xFFFF5722),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 10,
                    ),
                    child: Text(
                      "Các loại mẫu hàng" , style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color:  Color(0xFFFF5722),
                    ),
                    ),
                  ),
                  Categorieswidget(),
                  
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                    child: Text("Đang bán chạy" , style: TextStyle(fontSize: 25 , fontWeight: FontWeight.bold, color : Color(0xFFFF5722)),),
                  ),
                  Itemwidget(),
                ],
              ),
            )
          ],
        ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        onTap: (index) {},
        height: 70,
        color:  Color(0xFFFF5722),
          items: [
            Icon(
              Icons.home ,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              Icons.favorite ,
              size: 30,
              color: Colors.white,
            ),
            Icon(
              CupertinoIcons.cart_fill,
              size: 30,
              color: Colors.white,
            ), Icon(
              Icons.list ,
              size: 30,
              color: Colors.white,
            ),
          ],
      ),
    );
  }
}
