import 'package:flutter/material.dart';
import 'package:flutter_ott_info/Logic/Providers/page_view_movies_provider.dart';
import 'package:flutter_ott_info/Presentation/Pages/HomePages/AllHomeTabBarPages/HomeAllBody/page_view_movies_details_page.dart';
import 'package:provider/provider.dart';
import 'package:get/get.dart';

class PageViewMoviesPage extends StatelessWidget {
  const PageViewMoviesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<PgaeViewMoviesProvier>(builder: (context, value, child) {
      return Column(
        children: [
          SizedBox(
            height: 220,
            child: PageView.builder(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemCount: value.allImage.length,
              onPageChanged: (index) {
                value.setCurrentPage(index);
              },
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Get.to(
                      () => const PageViewMovieDetailsPage(),
                      transition: Transition.rightToLeft,
                      arguments: value.allImage[index],
                    );
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 220,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: NetworkImage(
                          value.allImage[index],
                        ),
                      ),
                    ),
                    // child: ClipRRect(
                    //   borderRadius: BorderRadius.circular(3.0),
                    //   child: Image.network(
                    //     allImage[index],
                    //     fit: BoxFit.fill,
                    //   ),
                    // ),
                  ),
                );
              },
            ),
          ),
          // indicator
          const SizedBox(height: 10),
          SizedBox(
            height: 10,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: value.allImage.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 2),
                  width: 8.0,
                  height: 8.0,
                  decoration: BoxDecoration(
                    color: value.currentPage == index
                        ? Colors.black
                        : Colors.grey[300],
                    shape: BoxShape.circle,
                  ),
                );
              },
            ),
          )
        ],
      );
    });
  }
}
