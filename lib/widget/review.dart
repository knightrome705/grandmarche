import 'package:flutter/material.dart';
import 'package:grandmarche/widget/rating.dart';

class Review extends StatelessWidget {
  String rating,title,description,date;
   Review({
    super.key,
    required this.date,
    required this.rating,
    required this.title,
    required this.description
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
           Row(
            children: [
              Rating(rating: rating,),
              const SizedBox(width: 5),
               Text(title)
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(maxHeight: 60),
            child:  Wrap(
              children: [
                Text(
                  description,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                )
              ],
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                'Read more',
                style: TextStyle(color: Colors.grey,decoration: TextDecoration.underline),
              )
            ],
          ),
          const SizedBox(
            height: 5,
          ),
           Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [Text(date)],
          ),
          const Divider(thickness:2,)
        ],
      ),
    );
  }
}
