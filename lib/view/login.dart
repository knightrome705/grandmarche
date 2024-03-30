import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grandmarche/controller/login_controller.dart';
import 'package:grandmarche/utils/app_style.dart';
import 'package:grandmarche/utils/app_theme.dart';

import '../widget/cust_text.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  bool isenabled = false;
  bool secure = false;
  final GlobalKey<FormState> _formkey = GlobalKey();
  Widget build(BuildContext context) {
    var height=MediaQuery.of(context).size.height;
    var width=MediaQuery.of(context).size.width;
    var controller = Get.put(LoginController());
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Form(
              key: _formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                   SizedBox(
                    height:height*0.08,
                  ),
                  Container(
                    height: 200,
                    width: 350,
                    decoration: const BoxDecoration(
                        color: Colors.red,
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assests/login.png'))),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      Text(
                        'Log in',
                        style: AppStyle.primary,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'your account',
                        style: AppStyle.primary,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Cust_Text(
                    label: 'User Name',
                    suffixIcon: const SizedBox(),
                    controller: controller.name,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter name';
                      }
                    },
                    obscure: false,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Cust_Text(
                    label: 'Password',
                    suffixIcon: IconButton(
                      icon: secure == true
                          ? const Icon(Icons.remove_red_eye)
                          : const Icon(Icons.remove_red_eye_outlined),
                      onPressed: () {
                        setState(() {
                          secure = !secure;
                        });
                      },
                    ),
                    controller: controller.password,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Enter password';
                      }
                    },
                    obscure: secure,
                  ),
                  Row(
                    children: [
                      Checkbox(
                          value: isenabled,
                          onChanged: (value) {
                            setState(() {
                              isenabled = value!;
                            });
                          }),
                      const Text('Remembe me'),
                      const SizedBox(
                        width: 100,
                      ),
                      Text(
                        'Forgot password?',
                        style: AppStyle.basic,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      bool result = _formkey.currentState!.validate();
                      print(result);
                      if (result == true) {
                        controller.storeClientDetails();
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        minimumSize: const Size(320, 50),
                        backgroundColor: orange,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: Text(
                      'Login',
                      style: TextStyle(color: white),
                    ),
                  )
                ],
              ),
            ),
          ),
        )),
      ),
    );
  }
}
