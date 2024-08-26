import 'package:e_commerce_app/homepage.dart/home.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_app/homepage.dart/account.dart';
import 'package:e_commerce_app/homepage.dart/wishlist.dart';
import 'package:e_commerce_app/homepage.dart/history.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _currentIndex = 0;
  void NavigateButtomBar(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final List<Widget> _pages = [
    HomePage(),
    WishList(),
    History(),
    Account(),
    
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.grey[200],
          onTap: NavigateButtomBar,
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.grey,), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite_outline, color: Colors.grey,), label: 'Wishlist'),
            BottomNavigationBarItem(icon: Icon(Icons.book, color: Colors.grey,), label: 'History'),
            BottomNavigationBarItem(icon: Icon(Icons.person_outlined, color: Colors.grey,), label: 'Account'),
          ]),
    );
  }
}
