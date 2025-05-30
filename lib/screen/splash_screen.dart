import 'package:appbar/screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  
  @override
  void initState() {
    Future.delayed(
        Duration(seconds: 3),
            () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen(),));
    });
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(child: Lottie.asset('asset/Animation - 1745078978185.json'),),
    );
  }
}
