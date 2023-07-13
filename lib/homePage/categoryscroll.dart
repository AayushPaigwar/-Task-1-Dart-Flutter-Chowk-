import 'package:e_commerce_app/components/reusablecard.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_app/components/constants.dart';

class CategoriesScroll extends StatelessWidget {
  const CategoriesScroll({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5),
            child: Row(
              children: [
                ReusableCard(
                  image: "assets/images/explore.png",
                  text: Text(
                    "Explore",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: mainColor),
                  ),
                ),
                ReusableCard(
                  image: "assets/images/earphones.png",
                  text: Text(
                    "Earphones",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: mainColor),
                  ),
                ),
                ReusableCard(
                  image: "assets/images/macbook.png",
                  text: Text(
                    "Laptops",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: mainColor),
                  ),
                ),
                ReusableCard(
                  image: "assets/images/mobile.png",
                  text: Text(
                    "Mobiles",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: mainColor),
                  ),
                ),
                ReusableCard(
                  image: "assets/images/electronics.png",
                  text: Text(
                    "Watches",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: mainColor),
                  ),
                ),
                ReusableCard(
                  image: "assets/images/nike.png",
                  text: Text(
                    "Shoes",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: mainColor),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
