import 'dart:async';

import 'package:capstone2_61/signIn.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cap2',
        theme: ThemeData(
          fontFamily: 'Gotham',
          scaffoldBackgroundColor: const Color(0xFFF9F9F9),
          primaryColor: const Color(0xFF1F319D),
        ),

      home: const SplashScreen()
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Timer(
        const Duration(
          seconds: 3,
        ), () {
     Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const SignIn()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor:  Color(0xFF1F319D),
      body: Center(
        child: ImageIcon(
     AssetImage("images/logo2.png"),
     size: 223,
     color: Colors.white,
),
      ),
    );
  }
}