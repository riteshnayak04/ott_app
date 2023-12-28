import 'package:flutter/material.dart';
import 'package:flutter_ott_info/Presentation/Pages/HomePages/AllHomeTabBarPages/home_page.dart';
import 'package:flutter_ott_info/Presentation/Pages/HomePages/AllHomeTabBarPages/kids_page.dart';
import 'package:flutter_ott_info/Presentation/Pages/HomePages/AllHomeTabBarPages/live_tv_page.dart';
import 'package:flutter_ott_info/Presentation/Pages/HomePages/AllHomeTabBarPages/movies_page.dart';
import 'package:flutter_ott_info/Presentation/Pages/HomePages/AllHomeTabBarPages/music_page.dart';
import 'package:flutter_ott_info/Presentation/Pages/HomePages/AllHomeTabBarPages/short_films_page.dart';
import 'package:flutter_ott_info/Presentation/Pages/HomePages/AllHomeTabBarPages/tv_shows_page.dart';
import 'package:flutter_ott_info/Presentation/Pages/HomePages/AllHomeTabBarPages/upcoming_page.dart';

class TabBarProvider with ChangeNotifier {
  // tab bar list
  final List myTabs = [
    'Home',
    'Movies',
    'LiveTv',
    'Music',
    'Tv Shows',
    'Kids',
    'Short Films',
    'Upcoming New',
  ];
  int selectedIndex = 0;
  List myBody = [
    const HomePage(),
    const MoviesPage(),
    const LiveTvPage(),
    const MusicPage(),
    const TvShowsPage(),
    const KidsPage(),
    const ShortFilmsPage(),
    const UpcomingPage(),
  ];

  void changeIndex(int index) {
    selectedIndex = index;
    notifyListeners();
  }
}
