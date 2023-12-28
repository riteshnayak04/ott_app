import 'package:flutter/material.dart';
import 'package:flutter_ott_info/Presentation/Pages/HomePages/AllHomeTabBarPages/HomeAllBody/original_special_movie_details.dart';
import 'package:get/get.dart';

class OriginalSpecialMoviePage extends StatefulWidget {
  const OriginalSpecialMoviePage({super.key});

  @override
  State<OriginalSpecialMoviePage> createState() =>
      _OriginalSpecialMoviePageState();
}

class _OriginalSpecialMoviePageState extends State<OriginalSpecialMoviePage> {
  List allImage = [
    'https://cdn.wallpapersafari.com/86/95/Idsx01.jpg',
    'https://wallpapercave.com/wp/wp6907693.jpg',
    'https://images.hungama.com/c/1/c6b/289/104750771/104750771_1280x800.jpg',
    'https://cdn.wallpapersafari.com/95/85/vjDSMT.jpg',
    'https://c4.wallpaperflare.com/wallpaper/726/46/535/movies-hollywood-movies-wallpaper-preview.jpg',
    'https://i.ytimg.com/vi/h5cz0oB3sRE/sddefault.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Text(
            'Original Special Movies',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 110,
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: allImage.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Get.to(
                    () => const OriginalSpecialMovieDetails(),
                    transition: Transition.rightToLeft,
                    arguments: allImage[index],
                  );
                },
                child: Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.symmetric(horizontal: 2),
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(8.0),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                        allImage[index],
                      ),
                    ),
                  ),
                  height: 110,
                  width: 160,
                  // child: ClipRRect(
                  //   borderRadius: BorderRadius.circular(8.0),
                  //   child: Image.network(
                  //     allImage[index],
                  //     fit: BoxFit.fill,
                  //   ),
                  // ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
