import 'package:clothing_shop_app/utils/constans/color_constans.dart';
import 'package:clothing_shop_app/view/home_screen/home_screen.dart';
import 'package:flutter/material.dart';

class BottomNavscreen extends StatefulWidget {
  const BottomNavscreen({super.key});

  @override
  State<BottomNavscreen> createState() => _BottomNavscreenState();
}

class _BottomNavscreenState extends State<BottomNavscreen> {
  int selectedTab = 0;

  List screens = [
    HomeScreen(),
    Container(color: Colors.yellow),
    Container(color: Colors.red),
    Container(color: Colors.blue),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        backgroundColor: ColorConstans.primaryColor,
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      appBar: AppBar(
        title: Text("Bottom Nav Bar Screen"),
      ),
      body: screens[selectedTab],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedTab,
        onTap: (value) {
          selectedTab = value;
          setState(() {});
        },
        selectedItemColor: ColorConstans.primaryColor,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_outline),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_none_outlined),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outlined),
            label: "",
          ),
        ],
      ),
    );
  }
}
