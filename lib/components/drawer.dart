import 'package:flutter/material.dart';

import 'constants.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            padding: EdgeInsets.all(50),
            decoration: BoxDecoration(
              color: mainColor,
            ),
            child: Text(
              'Welcome User!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.explore),
            title: Text('Explore'),
            onTap: () {
              // Perform action when Home is tapped
            },
          ),
          ListTile(
            leading: Icon(Icons.rate_review),
            title: Text('Rate the app'),
            onTap: () {
              // Perform action when Home is tapped
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () {
              // Perform action when Settings is tapped
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
            onTap: () {
              // Perform action when Home is tapped
            },
          ),
        ],
      ),
    );
  }
}
