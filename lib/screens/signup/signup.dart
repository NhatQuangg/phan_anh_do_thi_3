import 'package:flutter/material.dart';
import 'package:phan_anh_do_thi_3/constants/constant.dart';
import 'package:get/get.dart';
import 'package:phan_anh_do_thi_3/controller/signup_controller.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    final _formKey = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Đăng ký",
          style: TextStyle(color: Colors.white),
          // textAlign: TextAlign.center,
        ),
        backgroundColor: kPrimaryColor,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  // controller: controller.,
                  decoration: InputDecoration(
                      labelText: "Họ tên",
                      labelStyle: TextStyle(
                        color: Color(0xff888888),
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue, width: 2.0)
                      ),
                    // controller: ,
                    // validator: ,
                  ),
                  obscureText: true,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: "Email",
                      labelStyle: TextStyle(
                        color: Color(0xff888888),
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue, width: 2.0)
                      )
                    // controller: ,
                    // validator: ,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: "Số điện thoại",
                      labelStyle: TextStyle(
                        color: Color(0xff888888),
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue, width: 2.0)
                      )
                    // controller: ,
                    // validator: ,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: "Mật khẩu",
                      labelStyle: TextStyle(
                        color: Color(0xff888888),
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue, width: 2.0)
                      )
                    // controller: ,
                    // validator: ,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      labelText: "Xác nhận mật khẩu",
                      labelStyle: TextStyle(
                        color: Color(0xff888888),
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                      fillColor: Colors.white,
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.blue, width: 2.0)
                      )
                    // controller: ,
                    // validator: ,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 20, 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('Bạn đã có tài khoản?'),
                    TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(),
                        child: Text(
                          'Đăng nhập',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: Colors.orange,
                            decoration: TextDecoration.underline,
                          ),
                        )),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 0),
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: TextButton(
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => Login()),
                        // );
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: Color(0xff152534),
                      ),
                      child: Text(
                        'Đăng ký',
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
