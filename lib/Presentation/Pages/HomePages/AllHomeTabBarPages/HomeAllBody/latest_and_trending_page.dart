import 'package:flutter/material.dart';
import 'package:flutter_ott_info/Presentation/Pages/HomePages/AllHomeTabBarPages/HomeAllBody/latest_and_trending_details_page.dart';
import 'package:get/get.dart';

class LatestAndTrendingPage extends StatefulWidget {
  const LatestAndTrendingPage({super.key});

  @override
  State<LatestAndTrendingPage> createState() => _LatestAndTrendingPageState();
}

class _LatestAndTrendingPageState extends State<LatestAndTrendingPage> {
  List allImage = [
    'https://hindi.cdn.zeenews.com/hindi/sites/default/files/2022/09/16/1323296-kbc-14.jpg',
    'https://static.theprint.in/wp-content/uploads/2022/09/ANI-20220929154028.jpg',
    'https://i.ytimg.com/vi/jeKBMdYaM3U/maxresdefault.jpg',
    'https://thenewleam.com/wp-content/uploads/2017/09/into-the-wild-670x448.jpg',
    'https://affairscloud.com/assets/uploads/2020/11/Delhi-Crime-bags-Best-Drama-Series-at-the-International-Emmy-Awards-2020.jpg',
    'https://m.media-amazon.com/images/S/pv-target-images/9f6b7bf5dbcc3bc2b4208b1a8901d68cd74f5a1ed4a6d54d74b0de6841c1198e.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Text(
            'Latest & Trending',
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
                    () => const LatestAndTrendingDetailsPage(),
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
