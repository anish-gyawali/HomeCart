import 'package:flutter/material.dart';
import 'package:home_cart/pages/dailyList_page.dart';
import 'package:home_cart/pages/home_screen.dart';
import 'package:home_cart/pages/profile_page.dart';

import 'appbar.dart';
import 'drawer.dart';

class NavigationBar extends StatefulWidget {
  @override
  _NavigationBarState createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  int selectedIndex = 0;
  final tabs = [
    Home(),
    DailyList(),
    Profile()
  ];
  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: TopBar(),
        drawer: MainDrawer(),
     body: tabs[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home')
          ),
        
        BottomNavigationBarItem(
            icon: Icon(Icons.my_library_books_outlined),
            title: Text('Daily List')
          ),
        
        BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile')
          ),
      ],
      currentIndex: selectedIndex,
        selectedItemColor: Colors.red[600],
        onTap: _onItemTapped,
    ),
    );
  }
}