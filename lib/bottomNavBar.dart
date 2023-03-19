import 'package:first_project/pages/add.dart';
import 'package:first_project/pages/chat.dart';
import 'package:first_project/pages/home.dart';
import 'package:first_project/pages/my_ads.dart';
import 'package:first_project/pages/profile.dart';
import 'package:flutter/material.dart';

class BottomControllerPage extends StatefulWidget {
  const BottomControllerPage({Key? key}) : super(key: key);

  @override
  State<BottomControllerPage> createState() => _BottomControllerPageState();
}

class _BottomControllerPageState extends State<BottomControllerPage> {

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    var pages = [
      HomeScreen(),
      MyAds(),
      AddScreen(),
      ChatScreen(),
      Profile(),
    ];


    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (val) {
          setState(() {
            _currentIndex = val;
          });
          print(_currentIndex);
        },
        selectedItemColor: Color(0xff5956E9),
        unselectedItemColor: Colors.black54,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
              icon: Icon(Icons.home_outlined,), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_basket_outlined), label: "My Ads"),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_outlined), label: "Add"),
          BottomNavigationBarItem(
              icon: Icon(Icons.message_outlined), label: "Chat"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: "Profile"),
        ],
      ),
      body: pages[_currentIndex],
    );
  }
}
