import 'package:flutter/material.dart';
import 'package:flutter_ott_info/Presentation/Pages/HomePages/AllHomeTabBarPages/HomeAllBody/best_of_movies_details_page.dart';
import 'package:get/get.dart';

class BestOfPage extends StatefulWidget {
  const BestOfPage({super.key});

  @override
  State<BestOfPage> createState() => _BestOfPageState();
}

class _BestOfPageState extends State<BestOfPage> {
  List allImage = [
    'https://images.moneycontrol.com/static-mcnews/2023/01/2-PATHAAN-POSTER.jpg',
    'https://e1.pxfuel.com/desktop-wallpaper/88/701/desktop-wallpaper-dhanush-mass-telugu-movie-posters.jpg',
    'https://i.ytimg.com/vi/oAIHjHcPgxk/maxresdefault.jpg',
    'https://media.timeout.com/images/105903326/750/422/image.jpg',
    'https://www.bollywoodshaadis.com/img/article-l-2021926323290784547000.jpg',
    'https://static-koimoi.akamaized.net/wp-content/new-galleries/2015/11/ghayal-once-again-movie-poster-3.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Text(
            'Best of 2023',
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
                    () => const BestOf2023MovieDetailPages(),
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
                  // child: const Text('data'),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
