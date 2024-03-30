import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:grandmarche/view/description.dart';
import 'package:grandmarche/view/home.dart';
import 'package:grandmarche/view/login.dart';
import 'package:grandmarche/view/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: false,
        primarySwatch: Colors.orange
      ),
      // home: const Splash()
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page:()=>const Splash()),
        GetPage(name: '/login', page:()=>const Login()),
        GetPage(name: '/home', page:()=>const Home()),
        // GetPage(name: '/description', page:()=> Description(data: null,)),
      ],
    );
  }
}

