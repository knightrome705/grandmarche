import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grandmarche/controller/resturant_controller.dart';
import 'package:grandmarche/utils/app_style.dart';
import 'package:grandmarche/utils/app_theme.dart';
import 'package:grandmarche/view/description.dart';

import '../widget/cust_view.dart';

class Home extends StatefulWidget {
  const Home({Key? key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(
        title:  Text(
          'RESTURANTS',
          style:AppStyle.title,
        ),
        actions: [
          Row(
            children: [
              IconButton(icon: Icon(Icons.logout, color: white), onPressed: () { Get.offAllNamed('/login'); },),
               Text('Log out',
                  style: AppStyle.second),
              const SizedBox(
                width: 10,
              )
            ],
          ),
        ],
      ),
      body: Obx(
        () => controller.isLoading == true
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListView.builder(
                itemCount: controller.resturantList.length,
                itemBuilder: (context, index) {
                  var data = controller.resturantList[index];
                  return InkWell(
                    onTap: () {
                      // Get.toNamed('/description',arguments: [data]);
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Description(
                                address: data.address,
                                rating: data.reviews[0].rating.toString(),
                                reviews: data.reviews,
                                cusine_type: data.cuisineType,
                                neighborhood: data.cuisineType,
                                restname: data.name,
                                workingdys: data.operatingHours),
                          ));
                    },
                    child: Cust_view(
                      rating: data.reviews[0].rating.toString(),
                      address: data.address,
                      cuisine_type: data.cuisineType,
                      restName: data.name,
                    ),
                  );
                }),
      ),
    );
  }
}
