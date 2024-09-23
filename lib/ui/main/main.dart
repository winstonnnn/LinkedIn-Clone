import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:linked_in_clone/ui/main/widgets/main_bottom_nav_bar.dart';
import 'package:linked_in_clone/ui/screens/home/home_screen.dart';
import 'package:linked_in_clone/ui/screens/jobs/jobs_screen.dart';
import 'package:linked_in_clone/ui/screens/my_network/my_network_screen.dart';
import 'package:linked_in_clone/ui/screens/notification/notification_screen.dart';
import 'package:linked_in_clone/ui/screens/video/video_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {

  var selectedIndex = 0;

  static const List<Widget> _pages = <Widget>[
    HomeScreen(),
    VideoScreen(),
    MyNetworkScreen(),
    NotificationScreen(),
    JobsScreen(),
  ];

  void _onBottomNavigationItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: _pages.elementAt(selectedIndex),
        bottomNavigationBar: MainBottomNavBar(
          onItemTapped: _onBottomNavigationItemTapped,
        ),
      ),
    );
  }
}

