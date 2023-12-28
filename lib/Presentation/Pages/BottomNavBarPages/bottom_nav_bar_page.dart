import 'package:flutter/material.dart';
import 'package:flutter_ott_info/Logic/Providers/bottom_nav_bar_provider.dart';
import 'package:provider/provider.dart';

class BottomNavBarPage extends StatelessWidget {
  const BottomNavBarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<BottomNavBarProvider>(builder: (context, value, child) {
      return Scaffold(
        body: value.allPages[value.currentIndex],
        bottomNavigationBar: SizedBox(
          height: 60.0,
          child: BottomNavigationBar(
            currentIndex: value.currentIndex,
            onTap: (index) {
              value.changeIndex(index);
            },
            iconSize: 26.0,
            selectedFontSize: 12,
            unselectedFontSize: 12,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Find'),
              BottomNavigationBarItem(icon: Icon(Icons.tv), label: 'Channels'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_bag), label: 'Store'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.account_circle_sharp), label: 'My Stuff'),
            ],
          ),
        ),
      );
    });
  }
}
