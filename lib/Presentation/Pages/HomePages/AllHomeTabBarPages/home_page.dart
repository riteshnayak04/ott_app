import 'package:flutter/material.dart';
import 'package:flutter_ott_info/Presentation/Pages/HomePages/AllHomeTabBarPages/HomeAllBody/best_of_2023_page.dart';
import 'package:flutter_ott_info/Presentation/Pages/HomePages/AllHomeTabBarPages/HomeAllBody/latest_and_trending_page.dart';
import 'package:flutter_ott_info/Presentation/Pages/HomePages/AllHomeTabBarPages/HomeAllBody/movie_genres_page.dart';
import 'package:flutter_ott_info/Presentation/Pages/HomePages/AllHomeTabBarPages/HomeAllBody/movie_language_page.dart';
import 'package:flutter_ott_info/Presentation/Pages/HomePages/AllHomeTabBarPages/HomeAllBody/original_movies_page.dart';
import 'package:flutter_ott_info/Presentation/Pages/HomePages/AllHomeTabBarPages/HomeAllBody/original_special_series_page.dart';
import 'package:flutter_ott_info/Presentation/Pages/HomePages/AllHomeTabBarPages/HomeAllBody/page_view_movies_page.dart';
import 'package:flutter_ott_info/Presentation/Pages/HomePages/AllHomeTabBarPages/HomeAllBody/recently_added_movies_page.dart';
import 'package:flutter_ott_info/Presentation/Pages/HomePages/AllHomeTabBarPages/HomeAllBody/recently_added_tv_show_page.dart';
import 'package:flutter_ott_info/Presentation/Pages/HomePages/AllHomeTabBarPages/HomeAllBody/top_imdb_movie_page.dart';
import 'package:flutter_ott_info/Presentation/Pages/HomePages/AllHomeTabBarPages/HomeAllBody/top_movies_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      children: const [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // page view movies
            PageViewMoviesPage(),
            SizedBox(height: 18),
            // top movies
            TopMoviesPage(),
            SizedBox(height: 18),
            // original special movies
            OriginalSpecialMoviePage(),
            SizedBox(height: 18),
            // best of 2023
            BestOfPage(),
            SizedBox(height: 18),
            // movie genres
            MovieGenresPage(),
            SizedBox(height: 18),
            // watch movies in your language
            MovieLanguagePage(),
            SizedBox(height: 18),
            // original special series
            OriginalSpecialSeriesPage(),
            SizedBox(height: 18),
            // top rated IMDB series
            TopRatedIMDBMoviesPage(),
            SizedBox(height: 18),
            // recently added tv shows
            RecentlyAddedTvShowsPage(),
            SizedBox(height: 18),
            // recently added movies
            RecentlyAddedMoviesPage(),
            SizedBox(height: 18),
            // latest & trending
            LatestAndTrendingPage(),
          ],
        ),
      ],
    );
  }
}
