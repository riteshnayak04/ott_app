import 'package:flutter/material.dart';
import 'package:flutter_ott_info/Presentation/Pages/ChannelsPages/channels_page.dart';
import 'package:flutter_ott_info/Presentation/Pages/FindPages/find_page.dart';
import 'package:flutter_ott_info/Presentation/Pages/HomePages/home_tab_bar_page.dart';
import 'package:flutter_ott_info/Presentation/Pages/SettingPages/settings_page.dart';
import 'package:flutter_ott_info/Presentation/Pages/StorePages/store_page.dart';

class BottomNavBarProvider with ChangeNotifier {
  int currentIndex = 0;

  // pages
  List<Widget> allPages = [
    const HomeTabBarPage(),
    const FindPage(),
    const ChannelsPage(),
    const StorePage(),
    const SettingsPage(),
  ];

  void changeIndex(int index) {
    currentIndex = index;
    notifyListeners();
  }
}
