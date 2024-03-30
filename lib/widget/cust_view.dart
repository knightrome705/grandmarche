import 'package:flutter/material.dart';
import 'package:grandmarche/view/description.dart';
import 'package:grandmarche/widget/rating.dart';

class Cust_view extends StatelessWidget {
  String restName, rating, cuisine_type, address;
  Cust_view(
      {super.key,
      required this.rating,
      required this.address,
      required this.cuisine_type,
      required this.restName});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        height: 370,
        padding: const EdgeInsets.all(5),
        width: double.infinity,
        child: Column(
          children: [
            Image.asset('assests/login.png'),
            const SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    restName,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Rating(
                  rating: rating,
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Container(
                      decoration: const BoxDecoration(
                          color: Colors.grey, shape: BoxShape.circle),
                      child: const Icon(
                        Icons.close,
                        color: Colors.white,
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                   Text(cuisine_type)
                ],
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  const Icon(
                    Icons.location_on,
                    color: Colors.grey,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(address)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
