import 'package:flutter/material.dart';
import 'package:flutter_ott_info/Presentation/Pages/HomePages/AllHomeTabBarPages/HomeAllBody/movie_genres_details_page.dart';
import 'package:get/get.dart';

class MovieGenresPage extends StatefulWidget {
  const MovieGenresPage({super.key});

  @override
  State<MovieGenresPage> createState() => _MovieGenresPageState();
}

class _MovieGenresPageState extends State<MovieGenresPage> {
  List allImage = [
    'https://i.ytimg.com/vi/70lhQkg8O5w/sddefault.jpg',
    'https://www.oyorooms.com/blog/wp-content/uploads/2017/10/Feature-Image-min-14.jpg',
    'https://cdn4.vectorstock.com/i/1000x1000/99/58/scary-lettering-thriller-on-a-black-background-vector-34309958.jpg',
    'https://assets.editorial.aetnd.com/uploads/2023/03/Greek-mythology-gettyImages-1220052224.jpg',
    'https://www.shutterstock.com/blog/wp-content/uploads/sites/5/2017/04/documentary_stills_cover.jpg',
    'https://thumbs.dreamstime.com/b/high-contrast-image-crime-scene-tape-red-blue-lights-background-crime-scene-tape-red-blue-lights-107983035.jpg',
  ];

  List<String> movieGenres = [
    'BioPic',
    'Historical',
    'Thriller',
    'Mythology',
    'Documentary',
    'Crime',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Text(
            'Movie Genres',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 120,
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: allImage.length,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(
                        () => const MovieGenresDetailsPage(),
                        transition: Transition.rightToLeft,
                      );
                    },
                    child: Container(
                      margin: const EdgeInsets.only(right: 5),
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: NetworkImage(allImage[index]),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      height: 30,
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(0.0),
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                            Colors.black.withOpacity(0.5),
                            Colors.black.withOpacity(0.2),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 5,
                    left: 5,
                    child: Text(
                      movieGenres[index],
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        )
      ],
    );
  }
}
