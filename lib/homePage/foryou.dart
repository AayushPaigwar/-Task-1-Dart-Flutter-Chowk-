import 'package:e_commerce_app/components/reusablecard.dart';
import 'package:flutter/material.dart';

class Foryou extends StatelessWidget {
  Foryou({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            "For You",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ForyouCard(
                image: "assets/images/banner1.png",
              ),
              ForyouCard(
                image: "assets/images/shoes.png",
              ),
              ForyouCard(
                image: "assets/images/banner1.png",
              ),
              ForyouCard(
                image: "assets/images/shoes.png",
              ),
            ],
          ),
        ),
        //
      ],
    );
  }
}
