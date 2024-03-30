 import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginController extends GetxController{
  TextEditingController name=TextEditingController();
  TextEditingController password=TextEditingController();
  Future<void> storeClientDetails()async{
    SharedPreferences prefers=await SharedPreferences.getInstance();
    prefers.setString('name', name.text);
    prefers.setString('password', password.text);
    prefers.setBool('islogged', true);
    checkLoginState();
  }

  Future<void> checkLoginState() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if(prefs.getBool('islogged')==true){
      Get.offAllNamed('/home');
      Get.snackbar('Title', 'welcome');
    }else{
      Get.snackbar('title', 'Failed to login');
    }
  }


}