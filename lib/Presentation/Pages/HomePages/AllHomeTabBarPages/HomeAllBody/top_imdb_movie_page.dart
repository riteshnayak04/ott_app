import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_ott_info/Presentation/Pages/HomePages/AllHomeTabBarPages/HomeAllBody/top_imdb_movie_details_page.dart';

class TopRatedIMDBMoviesPage extends StatefulWidget {
  const TopRatedIMDBMoviesPage({super.key});

  @override
  State<TopRatedIMDBMoviesPage> createState() => _TopRatedIMDBMoviesPageState();
}

class _TopRatedIMDBMoviesPageState extends State<TopRatedIMDBMoviesPage> {
  List allImage = [
    'https://i.ytimg.com/vi/Vhldo272vO8/maxresdefault.jpg',
    'https://images.indianexpress.com/2020/03/sooryavanshi-759-3.jpg',
    'https://static.toiimg.com/thumb/msid-84412953,width-1070,height-580,imgsize-394133,resizemode-6,overlay-toi_sw,pt-32,y_pad-40/photo.jpg',
    'https://static.toiimg.com/photo/msid-70395917/70395917.jpg',
    'https://filminformation.com/wp-content/uploads/2018/08/satyamev-jayate.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Text(
            'Top Rated IMDB Movies',
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
                    () => const TopIMBDMoviesdetailsPage(),
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
