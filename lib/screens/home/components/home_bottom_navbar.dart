import 'package:flutter/material.dart';
import 'package:phan_anh_do_thi_3/constants/constant.dart';

class home_bottom_navbar extends StatelessWidget {
  const home_bottom_navbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      notchMargin: 5.0,
      shape: CircularNotchedRectangle(),
      color: kPrimaryColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,
        children: [
          GestureDetector(
            onTap: () {
              print("hello");
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.person_rounded,
                    color: Colors.white,
                    size: 30,
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              // Xử lý khi nút được nhấn
            },
            child: Padding(
              padding:
              const EdgeInsets.only(right: 20.0, top: 10.0, bottom: 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.notifications,
                    color: Colors.white,
                    size: 30,
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              // Xử lý khi nút được nhấn
            },
            child: Padding(
              padding:
              const EdgeInsets.only(left: 20.0, top: 10.0, bottom: 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.favorite,
                    color: Colors.white,
                    size: 30,
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              // Xử lý khi nút được nhấn
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.settings,
                    color: Colors.white,
                    size: 30,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
