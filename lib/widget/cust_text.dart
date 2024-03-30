import 'package:flutter/material.dart';

class Cust_Text extends StatelessWidget {
  String label;
  Widget suffixIcon;
  TextEditingController controller;
  bool obscure;
  var validator;
  Cust_Text(
      {super.key,
      required this.label,
      required this.suffixIcon,
      required this.controller,
      required this.validator,
      required this.obscure});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextFormField(
        controller: controller,
        obscureText: obscure,
        decoration: InputDecoration(
          labelText: label,
          suffixIcon: suffixIcon,
          enabled: true,
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.orange,
              ),
              borderRadius: BorderRadius.circular(10)),
          focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.blue,
              ),
              borderRadius: BorderRadius.circular(10)),
          errorBorder: OutlineInputBorder(
              borderSide: const BorderSide(
                color: Colors.red,
              ),
              borderRadius: BorderRadius.circular(10)),
        ),
        validator: validator,
      ),
    );
  }
}
