import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grandmarche/view/login.dart';
class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Timer(const Duration(seconds: 2),(){
      Get.offAllNamed('/login');
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Container(
          height: 150,
          width: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assests/splash1.png')
            )
          ),
        )
      ),
    );
  }
}
