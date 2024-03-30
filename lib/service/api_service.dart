import 'dart:convert';

import 'package:get/get.dart';
import 'package:grandmarche/models/resturant.dart';
import 'package:http/http.dart' as http;
class ApiService{
  static var client = http.Client();
  static Future<dynamic> fetchResturantData()async{
    var response = await client.get(Uri.parse(
        'https://firstflight-web.ipixsolutions.net/api/getRestaurants'));

    if (response.statusCode == 200) {
      var jsonString = response.body;
      return resturantFromJson(jsonString);
    } else {
      Get.snackbar('error',response.statusCode.toString());
      return null;
    }
  }

}