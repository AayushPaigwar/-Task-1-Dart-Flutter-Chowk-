import 'package:e_commerce_app/components/reusablecard.dart';
import 'package:flutter/material.dart';

class MostPopular extends StatelessWidget {
  const MostPopular({super.key, this.image, this.textData});
  final image;
  final textData;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    "Most Popular",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              SizedBox(
                width: 145,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: TextButton(
                  child: Text(
                    "View All".toUpperCase(),
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.grey,
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          Row(
            children: [
              Column(
                children: [
                  /* created a reusable card for "most popular"
                  location: lib/components/reusablecard.dart
                  */
                  MostPopularCard(
                    image: 'assets/images/electronics.png',
                    textData: "Smart Watches",
                  )
                ],
              ),
              Column(
                children: [
                  MostPopularCard(
                      image: 'assets/images/macbook.png', textData: "Laptops")
                ],
              ),
            ],
          ),
          Row(
            children: [
              Column(
                children: [
                  MostPopularCard(
                      image: 'assets/images/earphones.png',
                      textData: "Earphones"),
                ],
              ),
              Column(
                children: [
                  MostPopularCard(
                      image: 'assets/images/mobile.png',
                      textData: "Smart Phones"),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
