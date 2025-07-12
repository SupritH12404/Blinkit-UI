import 'dart:async';
import 'package:flutter/material.dart';
import 'package:untitled/blinkil_clone_app/domain/constants/appcolors.dart';
import 'package:untitled/blinkil_clone_app/repository/screens/login/login_screen.dart';
import 'package:untitled/blinkil_clone_app/repository/widgets/UiHelper.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
@override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolors.scaffoldbackgroung,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UIHelper.customImage(img: "blinkit.png"),
          ],
        ),
      ),
    );
  }
}