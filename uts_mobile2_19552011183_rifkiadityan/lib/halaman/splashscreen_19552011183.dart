import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'dart:async';
import 'package:uts_mobile2_19552011183_rifkiadityan/halaman/home_dashboard_19552011183.dart';

void main() {
  runApp(SplashScreenPage());
}

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({Key? key}) : super(key: key);

  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    //implementasi
    super.initState();
    menujuHomePage();
  }

  menujuHomePage() async {
    //jumlah waktu loading
    var waktuLoading = const Duration(seconds: 5);

    return Timer(waktuLoading, () {
      //mulai ke halaman home
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) {
        return HomeDashboardPage();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
          child: Stack(children: <Widget>[
        Positioned(
          child: Align(
            alignment: Alignment.center,
            child: Image.asset(
              'images/fujifilm.png',
              scale: 2,
            ),
          ),
        ),
        Positioned(
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Text('Design by Rifki Aditya Nugraha | \u00a9 2021',
                style: TextStyle(fontSize: 10)),
          ),
        ),
      ])),
    );
  }
}
