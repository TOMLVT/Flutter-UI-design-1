import 'package:flutter/material.dart';

class CartBottomNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea( // Đảm bảo nội dung không tràn ra ngoài vùng an toàn
      child: BottomAppBar(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),

          child: Column(
            mainAxisSize: MainAxisSize.min, // Đảm bảo Column chỉ chiếm không gian cần thiết
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Tổng tiền:",
                    style: TextStyle(
                      color: Color(0xFFFF3D00),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "300 VNĐ",
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),

              InkWell(
                onTap: () {
                  // Thêm hành động khi nhấn nút
                },
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  alignment: Alignment.center,
                  height: 27, // Giữ chiều cao nút
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0xFFFF3D00),
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Text(
                    "Check Out",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
