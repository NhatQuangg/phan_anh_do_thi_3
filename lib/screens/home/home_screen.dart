import 'dart:io';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phan_anh_do_thi/constant.dart';
import 'package:phan_anh_do_thi/screens/home/components/hom_controller.dart';
import 'package:phan_anh_do_thi/screens/home/components/home_body.dart';
import 'package:phan_anh_do_thi/screens/home/components/home_bottom_navbar.dart';
import 'package:phan_anh_do_thi/screens/home/components/qr_code_scanner.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    final controllerCarouselSlider = Get.put(HomeController());
    return Scaffold(
      body: HomeBody(controllerCarouselSlider: controllerCarouselSlider),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => QRCodeScanner(),
            )
          );
        },
        child: Icon(Icons.qr_code_2),
        backgroundColor: kPrimaryColor,
        elevation: 0,
      ),
      bottomNavigationBar: home_bottom_navbar(),
    );
  }
}
