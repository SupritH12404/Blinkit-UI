import 'package:flutter/material.dart';
import 'package:untitled/blinkil_clone_app/repository/screens/splash/splash_screen.dart';

void main() {
  runApp(ProjectApp());
}

class ProjectApp extends StatelessWidget {
  const ProjectApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
    home: SplashScreen()
    );
  }
}