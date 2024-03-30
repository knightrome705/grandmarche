import 'package:flutter/material.dart';
import 'package:grandmarche/utils/app_theme.dart';

class Rating extends StatelessWidget {
  String rating;
   Rating({
    super.key,
    required this.rating
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 2),
      margin: const EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
          color: green,
          borderRadius: BorderRadius.circular(20)
      ),
      child:  Center(child: Text('$rating *',style:  TextStyle(color: white,fontWeight: FontWeight.bold),)),
    );
  }
}
