import 'package:book_summary/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:book_summary/constants/constants.dart';
import 'package:book_summary/explore_screen.dart';
import 'package:book_summary/library_screen.dart';
import 'package:book_summary/profile_screen.dart';

class Navigation_Bar extends StatefulWidget {
  @override
  State<Navigation_Bar> createState() => _Navigation_BarState();
}

class _Navigation_BarState extends State<Navigation_Bar> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = <Widget>[
    HomeScreen(), // Update Home Screen content here
    ExploreScreen(),
    LibraryScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: backgroundColor,
        elevation: 8,
        showUnselectedLabels: true,
        showSelectedLabels: true,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 15,
        selectedIconTheme: IconThemeData(color: primaryColor),
        selectedItemColor: primaryColor,
        enableFeedback: true,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: const Icon(Icons.home),
            label: 'For you',
            backgroundColor: primaryColor,
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            label: 'Library',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
