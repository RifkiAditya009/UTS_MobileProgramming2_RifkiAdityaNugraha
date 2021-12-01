import 'package:flutter/material.dart';
import 'package:uts_mobile2_19552011183_rifkiadityan/halaman/home_dashboard_19552011183.dart';
import 'package:uts_mobile2_19552011183_rifkiadityan/halaman/item_detail_19552011183.dart';
import 'package:uts_mobile2_19552011183_rifkiadityan/halaman/splashscreen_19552011183.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SplashScreenPage());
  }
}
