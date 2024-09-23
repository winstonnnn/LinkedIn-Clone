import 'package:flutter/material.dart';

class MainBottomNavBar extends StatefulWidget {
  const MainBottomNavBar({
    super.key,
    required this.onItemTapped
  });

  final Function(int index) onItemTapped;

  @override
  State<MainBottomNavBar> createState() => _MainBottomNavBarState();
}

class _MainBottomNavBarState extends State<MainBottomNavBar> {

  final selectedColor = Colors.black87;
  final unselectedColor = Colors.black45;
  var selectedIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
      widget.onItemTapped(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.white,
        onTap: onItemTapped,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: selectedColor,
        unselectedItemColor: unselectedColor,
        showUnselectedLabels: true,
        selectedLabelStyle: TextStyle(
            color: selectedColor,
            fontWeight: FontWeight.w500
        ),
        unselectedLabelStyle: TextStyle(
            color: unselectedColor,
            fontWeight: FontWeight.w400
        ),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.video_collection),
              label: "Video"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.people_alt),
              label: "My Network"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: "Notifications"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.work_rounded),
              label: "Jobs"
          ),
        ]
      ),
    );
  }
}


