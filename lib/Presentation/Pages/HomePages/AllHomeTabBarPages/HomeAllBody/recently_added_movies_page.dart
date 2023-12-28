import 'package:flutter/material.dart';
import 'package:flutter_ott_info/Presentation/Pages/HomePages/AllHomeTabBarPages/HomeAllBody/recently_added_movies_details_page.dart';
import 'package:get/get.dart';

class RecentlyAddedMoviesPage extends StatefulWidget {
  const RecentlyAddedMoviesPage({super.key});

  @override
  State<RecentlyAddedMoviesPage> createState() =>
      _RecentlyAddedMoviesPageState();
}

class _RecentlyAddedMoviesPageState extends State<RecentlyAddedMoviesPage> {
  List allImage = [
    'https://i.pinimg.com/originals/5e/57/f6/5e57f61c5a2ac72f2b6da7c54ada88b4.jpg',
    'https://www.naasongs.co/wp-content/uploads/2023/10/MAD-2023-250x250.jpg',
    'https://imgcdn.ragalahari.com/sep2022/designs/adipurush-posters//adipurush-posters1t.jpg',
    'https://moviezwap.cyou/poster/irugapatru-2023-telugu.jpg',
    'https://i.pinimg.com/736x/90/13/c7/9013c795100091c351857e42e89354c3.jpg',
    'https://i.pinimg.com/736x/c0/5b/92/c05b9232e2735febae8272e159fde82c.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Text(
            'Recently Added Movie',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 155,
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: allImage.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Get.to(
                    () => const RecentlyAddedMovieDetailsPage(),
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
                  height: 155,
                  width: 105,
                  // child: ClipRRect(
                  //   borderRadius: BorderRadius.circular(8.0),
                  //   child: FittedBox(
                  //     fit: BoxFit.fill,
                  // child: Image.network(
                  //   allImage[index],
                  //       fit: BoxFit.fill,
                  //     ),
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
