import 'package:flutter/material.dart';

var defaultBackgroundColor = Colors.grey[300];
var appBarColor = Colors.grey[900];
var myAppBar = AppBar(
  // backgroundColor: appBarColor,
  // foregroundColor: Colors.white,
  title: Text('PatuDash'),
  centerTitle: false,
  actions: [
    CircleAvatar(
      backgroundImage: AssetImage(
        'lib/images/1.jpg',
      ),
      // radius: 30,
    ),
  ],
);
var drawerTextColor = TextStyle(
  color: Colors.grey[600],
);
var tilePadding = const EdgeInsets.only(left: 8.0, right: 8, top: 8);
var myDrawer = Drawer(
  backgroundColor: Colors.white,
  elevation: 2,
  child: Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Column(
        children: [
          const DrawerHeader(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(
                    'lib/images/1.jpg',
                  ),
                  radius: 30,
                ),
                SizedBox(
                  height: 10,
                ),
                Text("Patrick Uche"),
                Text(
                  "Frontend Developer",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                )
              ],
            ),
            // child: Icon(
            //   Icons.favorite,
            //   size: 64,
            // ),
          ),
          Padding(
            padding: tilePadding,
            child: ListTile(
              leading: Icon(Icons.home),
              title: Text(
                'D A S H B O A R D',
                style: drawerTextColor,
              ),
              onTap: () {},
            ),
          ),
          Padding(
            padding: tilePadding,
            child: ListTile(
              leading: Icon(Icons.settings),
              title: Text(
                'S E T T I N G S',
                style: drawerTextColor,
              ),
              onTap: () {},
            ),
          ),
          Padding(
            padding: tilePadding,
            child: ListTile(
              leading: Icon(Icons.info),
              title: Text(
                'A B O U T',
                style: drawerTextColor,
              ),
              onTap: () {},
            ),
          ),
        ],
      ),
      Padding(
        padding: tilePadding,
        child: ListTile(
          leading: Icon(Icons.logout),
          title: Text(
            'L O G O U T',
            style: drawerTextColor,
          ),
          onTap: () {},
        ),
      ),
    ],
  ),
);
