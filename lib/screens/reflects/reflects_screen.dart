import 'package:flutter/material.dart';
import 'package:phan_anh_do_thi/constant.dart';
import 'package:phan_anh_do_thi/screens/home/home_screen.dart';

class ReflectScreen extends StatefulWidget {
  const ReflectScreen({super.key});

  @override
  State<ReflectScreen> createState() => _ReflectScreenState();
}

class _ReflectScreenState extends State<ReflectScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 0, top: 15.0, right: 5.0, bottom: 5.0),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      fixedSize: Size(170, 35),
                      backgroundColor: kButtonColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      side: BorderSide(
                        color: kPrimaryColor,
                        width: 0.5,
                      ),
                      // shadowColor: Colors.grey,
                      // elevation: 2
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.search,
                          color: Colors.black87,
                        ),
                        SizedBox(width: 8.0),
                        Text(
                          'Tìm kiếm',
                          style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w600
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 5.0, top: 15.0, right: 0.0, bottom: 5.0),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      fixedSize: Size(170, 35),
                      backgroundColor: kButtonColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      side: BorderSide(
                        color: kPrimaryColor,
                        width: 0.5,
                      ),
                      // shadowColor: Colors.grey,
                      // elevation: 2
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.menu_outlined,
                          color: Colors.black87,
                        ),
                        SizedBox(width: 8.0),
                        Text(
                          'Danh mục',
                          style: TextStyle(
                              color: Colors.black87,
                              fontWeight: FontWeight.w600
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 0.0, top: 10.0, right: 5.0, bottom: 0.0),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      fixedSize: Size(100, 35),
                      // backgroundColor: kButtonColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      side: BorderSide(
                        color: kPrimaryColor,
                        width: 0.5,
                      ),
                      // shadowColor: Colors.grey,
                      // elevation: 2
                    ),
                    onPressed: () {},
                    child: Text(
                      'Toàn bộ',
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 5.0, top: 10.0, right: 5.0, bottom: 0.0),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      fixedSize: Size(85, 35),
                      // backgroundColor: kButtonColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      side: BorderSide(
                        color: kPrimaryColor,
                        width: 0.5,
                      ),
                      // shadowColor: Colors.grey,
                      // elevation: 2
                    ),
                    onPressed: () {},
                    child: Text(
                      'Đã xử lý',
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 14,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 5.0, top: 10.0, right: 0.0, bottom: 0.0),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      fixedSize: Size(100, 35),
                      // backgroundColor: kButtonColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                      side: BorderSide(
                        color: kPrimaryColor,
                        width: 0.5,
                      ),
                      // shadowColor: Colors.grey,
                      // elevation: 2
                    ),
                    onPressed: () {},
                    child: Text(
                      'Đang xử lý',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
