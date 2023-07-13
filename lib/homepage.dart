import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'homePage/foryou.dart';
import 'homePage/categoryscroll.dart';
import 'homePage/mostpopular.dart';
import 'components/constants.dart';
import 'components/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: backgroundColor, size: 30),
        shadowColor: Colors.transparent,
        backgroundColor: mainColor,
        title: Text(
          'STYLE HUB',
          style: TextStyle(fontWeight: FontWeight.w300),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
            child: IconButton(icon: Icon(Icons.settings), onPressed: () {}),
          ),
        ],
      ),

      drawer: DrawerMenu(), // lib/components/drawer.dart

      body: SingleChildScrollView(
        //to make the page scrollable
        child: Column(
          children: [
            SearchBar(),
            CategoriesScroll(),
            Foryou(),
            MostPopular(),
          ],
        ),
      ),

      //used custom package for navigation bar (curved_navigation_bar: ^1.0.1)
      bottomNavigationBar: CurvedNavigationBar(
        height: 60,
        color: mainColor,
        backgroundColor: Colors.white,
        items: [
          Icon(Icons.home, size: 30, color: backgroundColor),
          Icon(Icons.category_outlined, size: 30, color: backgroundColor),
          Icon(Icons.favorite, size: 30, color: Colors.white),
          Icon(Icons.people_alt_outlined, size: 30, color: Colors.white),
        ],
      ),
    );
  }
}

//search bar widget
class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 20, 10, 0),
      padding: EdgeInsets.symmetric(horizontal: 15),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.search),
          hintText: 'Search for your products...',
          suffixIcon: IconButton(
            icon: Icon(Icons.mic),
            onPressed: () {
              // Perform action on microphone icon press
            },
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
          ),
        ),
      ),
    );
  }
}
