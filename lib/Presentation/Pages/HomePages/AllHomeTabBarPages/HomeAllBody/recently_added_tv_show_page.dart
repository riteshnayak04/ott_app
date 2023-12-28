import 'package:flutter/material.dart';
import 'package:flutter_ott_info/Presentation/Pages/HomePages/AllHomeTabBarPages/HomeAllBody/recently_added_tv_shows_details_page.dart';
import 'package:get/get.dart';

class RecentlyAddedTvShowsPage extends StatefulWidget {
  const RecentlyAddedTvShowsPage({super.key});

  @override
  State<RecentlyAddedTvShowsPage> createState() =>
      _RecentlyAddedTvShowsPageState();
}

class _RecentlyAddedTvShowsPageState extends State<RecentlyAddedTvShowsPage> {
  List allImage = [
    'https://i.timesnowhindi.com/stories/KKK_11.jpg',
    'https://i.ytimg.com/vi/L2QIz4lyYk0/maxresdefault.jpg',
    'https://ew.com/thmb/-VJKISa6Ubodh6h1IvIAmTLWkfM=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/big-bang-theory_collectors_cover-1-2000-384b6c63e473401b97356a43b9843599.jpg',
    'https://m.media-amazon.com/images/M/MV5BODI0ZTljYTMtODQ1NC00NmI0LTk1YWUtN2FlNDM1MDExMDlhXkEyXkFqcGdeQXVyMTM0NTUzNDIy._V1_FMjpg_UX1000_.jpg',
    'https://m.media-amazon.com/images/M/MV5BZTFlODc1MWUtZjEyOC00ZjllLWE1ZWYtZWY3NDhjNTM2NDYwXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg',
    'https://origin-staticv2.sonyliv.com/videoasset_images/tmkoc22_landscape_thumb.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Text(
            'Recently Added Tv Show',
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
                    () => const RecentlyAddedTVShowsDetailsPage(),
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
