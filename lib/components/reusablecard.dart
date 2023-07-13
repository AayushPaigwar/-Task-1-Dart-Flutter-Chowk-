import 'package:e_commerce_app/components/constants.dart';
import 'package:flutter/material.dart';

//used in lib/HomePage/categoryscroll.dart
class ReusableCard extends StatelessWidget {
  const ReusableCard(
      {super.key, @required this.image, @required required this.text});
  final image;
  final Text text;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Column(
        children: [
          TextButton(
            onPressed: () {},
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                //borderRadius: BorderRadius.circular(10),
                shape: BoxShape.circle,
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: Offset(0, 2)),
                ],
              ),
              child: Image.asset(
                image,
                scale: 1,
                fit: BoxFit.contain,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 3),
            child: text,
          )
        ],
      ),
    );
  }
}

//used in lib/HomePage/foryou.dart
class ForyouCard extends StatelessWidget {
  const ForyouCard({super.key, this.image});
  final image;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.all(0),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              width: 300,
              height: 200,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 4),
                borderRadius: BorderRadius.circular(10),
                color: mainColor,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 2,
                      blurRadius: 5,
                      offset: Offset(0, 2)),
                ],
              ),
              child: Image.asset(
                image,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//used in lib/HomePage/mostpopular.dart
class MostPopularCard extends StatelessWidget {
  const MostPopularCard(
      {super.key, @required this.image, @required this.textData});

  final image;
  final textData;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        TextButton(
          onPressed: () {},
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
            child: Container(
              width: 170,
              height: 180,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 4),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 2),
                  ),
                ],
                color: backgroundColor,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Image.asset(
                image,
                scale: 2.6,
              ),
            ),
          ),
        ),

        // Text of 1st Most Popular Items
        Padding(
          padding: const EdgeInsets.fromLTRB(1, 10, 0, 10),
          child: Text(textData.toUpperCase(), style: kMostPopularCard),
        ),
      ],
    );
  }
}
