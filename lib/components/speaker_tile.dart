import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../models/speaker.dart';

class SpeakerTile extends StatelessWidget {
  Speaker speaker;
  SpeakerTile({super.key, required this.speaker});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 280,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          //speaker pic
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(speaker.imagePath),
          ),

          //description
          Text(
            speaker.description,
            style: TextStyle(color: Colors.grey[600]),
          ),

          //price + details
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(speaker.name),
                  Text(speaker.price),
                ],
              ),

              //plus button
              Icon(Icons.add),
            ],
          )

          //button to add to cart
        ],
      ),
    );
  }
}
