import 'package:flutter/material.dart';
import 'package:flutter_ott_info/Presentation/Pages/HomePages/AllHomeTabBarPages/HomeAllBody/movie_language_movie_details_page.dart';
import 'package:get/get.dart';

class MovieLanguagePage extends StatefulWidget {
  const MovieLanguagePage({super.key});

  @override
  State<MovieLanguagePage> createState() => _MovieLanguagePageState();
}

class _MovieLanguagePageState extends State<MovieLanguagePage> {
  List allImage = [
    'https://www.shutterstock.com/shutterstock/photos/1794278881/display_1500/stock-vector-seamless-pattern-with-devanagari-alphabet-sanskrit-hindi-marathi-nepali-bihari-bhili-konkani-1794278881.jpg',
    'https://images.newindianexpress.com/uploads/user/imagelibrary/2022/1/24/w1200X800/Kannada_Language.jpg',
    'https://ih1.redbubble.net/image.3706006894.7400/flat,750x,075,f-pad,750x1000,f8f8f8.jpg',
    'https://5.imimg.com/data5/SELLER/Default/2021/2/MS/RM/AV/3302269/indian-language-solutions-500x500.jpg',
    'https://www.shutterstock.com/image-illustration/telugu-indian-language-word-black-260nw-1924244432.jpg',
    'https://vajiramandravi.s3.us-east-1.amazonaws.com/media/2022/1/14/9/26/31/marathiiii.jpg',
  ];

  List<String> languagesList = [
    'Bhojpuri',
    'Kannada',
    'Benagli',
    'Malayalam',
    'Telugu',
    'Marathi',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Text(
            'Watch Movies in Your Languag',
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
                        () => const MovieLanguageDetailsPage(),
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
                      languagesList[index],
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
