import 'package:flutter/material.dart';
import 'package:phan_anh_do_thi_3/constants/constant.dart';
import 'package:phan_anh_do_thi_3/screens/home/home_screen.dart';


class ReflectHeader extends StatelessWidget {
  const ReflectHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        "Phản ánh hiện trường",
        style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 19
        ),
      ),
      centerTitle: true,
      leading: IconButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomeScreen(),
              )
          );
        },
        icon: Icon(
          Icons.arrow_back,
          color: Colors.white,
          size: 30,
        ),
      ),
      backgroundColor: kPrimaryColor,
    );
  }
}