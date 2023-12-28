import 'package:flutter/material.dart';
import 'package:flutter_ott_info/Presentation/Pages/HomePages/AllHomeTabBarPages/HomeAllBody/top_movies_details_page.dart';
import 'package:get/get.dart';

class ZeeMoviesPage extends StatefulWidget {
  const ZeeMoviesPage({super.key});

  @override
  State<ZeeMoviesPage> createState() => _ZeeMoviesPageState();
}

class _ZeeMoviesPageState extends State<ZeeMoviesPage> {
  List allImage = [
    'https://imgcdn.ragalahari.com/may2023/designs/gunturkaaram-posters/gunturkaaram-posters1t.jpg',
    'https://i.pinimg.com/736x/90/13/c7/9013c795100091c351857e42e89354c3.jpg',
    'https://i.pinimg.com/236x/8e/4e/13/8e4e131e7ee47cfbbd48b9e9ccffda23.jpg',
    'https://i.pinimg.com/736x/c0/5b/92/c05b9232e2735febae8272e159fde82c.jpg',
    'https://moviezwap.cyou/poster/irugapatru-2023-telugu.jpg',
    'https://www.naasongs.co/wp-content/uploads/2023/10/MAD-2023-250x250.jpg',
    'https://imgcdn.ragalahari.com/sep2022/designs/adipurush-posters//adipurush-posters1t.jpg',
    'https://i.pinimg.com/originals/5e/57/f6/5e57f61c5a2ac72f2b6da7c54ada88b4.jpg',
    'https://i.pinimg.com/736x/50/f8/d7/50f8d7f707d3ec3fd0f747a1829c8a83.jpg',
    'https://i.pinimg.com/736x/9b/a8/cc/9ba8cc0062a41f8c2c2d664c6d1b0732.jpg',
    'https://i.pinimg.com/736x/6d/89/dc/6d89dc9be0f33adfcf48b30dcfc09b8e.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Zee Cinema',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey[600]),
              ),
              const SizedBox(height: 5),
              const Text(
                'Movies',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
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
                    transition: Transition.rightToLeft,
                    () => const TopMoviesDetalsPage(),
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
