import 'package:flutter/material.dart';
import 'package:flutter_ott_info/Presentation/Pages/ChannelsPages/AllChannelsBodyPage/sony_latest_movies_page.dart';
import 'package:flutter_ott_info/Presentation/Pages/ChannelsPages/AllChannelsBodyPage/top_shorts_page.dart';
import 'package:flutter_ott_info/Presentation/Pages/ChannelsPages/AllChannelsBodyPage/zee_movies_page.dart';
import 'package:flutter_ott_info/Presentation/Pages/HomePages/AllHomeTabBarPages/HomeAllBody/page_view_movies_page.dart';

class ChannelsPage extends StatelessWidget {
  const ChannelsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        toolbarHeight: 0.0,
      ),
      body: ListView(
        children: const [
          Column(
            children: [
              // pageview movies
              PageViewMoviesPage(),
              SizedBox(height: 18),
              // top shrots
              TopShowsPage(),
              SizedBox(height: 18),
              // movies
              ZeeMoviesPage(),
              SizedBox(height: 18),
              // sony latest movies
              SonyLatestMoviesPage(),
            ],
          )
        ],
      ),
    );
  }
}
