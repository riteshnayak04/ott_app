import 'package:flutter/material.dart';
import 'package:flutter_ott_info/Core/Themes/theme.dart';
import 'package:flutter_ott_info/Presentation/Widgets/cast_and_crew_widget.dart';
import 'package:get/get.dart';

class PageViewMovieDetailsPage extends StatefulWidget {
  const PageViewMovieDetailsPage({super.key});

  @override
  State<PageViewMovieDetailsPage> createState() =>
      _PageViewMovieDetailsPageState();
}

class _PageViewMovieDetailsPageState extends State<PageViewMovieDetailsPage>
    with TickerProviderStateMixin {
  String imageUrl = Get.arguments;

  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 2, vsync: this);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        toolbarHeight: 0.0,
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      height: 260,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                            imageUrl,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 10,
                      left: 10,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          alignment: Alignment.center,
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(40.0),
                          ),
                          child: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size: 25,
                          ),
                        ),
                      ),
                    ),
                    // paly button
                    Positioned(
                      top: 100,
                      left: 150,
                      child: Container(
                        alignment: Alignment.center,
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(60.0),
                        ),
                        child: const Icon(
                          Icons.play_arrow,
                          color: Colors.white,
                          size: 40,
                        ),
                      ),
                    ),
                    // movie name
                    Positioned(
                      top: 200,
                      left: 10,
                      child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: MediaQuery.of(context).size.width * 0.9,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.3),
                        ),
                        child: Column(
                          children: [
                            const Text(
                              'Movie Name',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              '2022 | 2 min 59 sec',
                              style: TextStyle(
                                color: Colors.grey[100],
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                // movie details
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            width: 21,
                            height: 21,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: const Text(
                              'RS',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          const SizedBox(width: 5),
                          Text(
                            'Available to rent',
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 0.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          fixedSize:
                              Size(MediaQuery.of(context).size.width * 1.0, 55),
                          backgroundColor: ColorCodes.defaultGreenColor,
                        ),
                        onPressed: () {},
                        child: const Row(
                          children: [
                            Icon(Icons.play_arrow, size: 30),
                            SizedBox(width: 10),
                            Text(
                              'Watch Now',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      // circular buttons
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              // width: 80,
                              height: 100,
                              decoration: BoxDecoration(
                                // color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(60.0),
                                      border: Border.all(
                                        color: ColorCodes.defaultGreenColor,
                                        width: 1.5,
                                      ),
                                    ),
                                    child: const Icon(
                                      Icons.shopping_bag_outlined,
                                      color: Colors.black,
                                      size: 30,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  const Text(
                                    'Rent at just Rs 150',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              // width: 80,
                              height: 100,
                              decoration: BoxDecoration(
                                // color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(60.0),
                                      border: Border.all(
                                        color: ColorCodes.defaultGreenColor,
                                        width: 1.5,
                                      ),
                                    ),
                                    child: const Icon(
                                      Icons.play_arrow,
                                      color: Colors.black,
                                      size: 30,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  const Text(
                                    'Trailer',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              // width: 80,
                              height: 100,
                              decoration: BoxDecoration(
                                // color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(60.0),
                                      border: Border.all(
                                        color: ColorCodes.defaultGreenColor,
                                        width: 1.5,
                                      ),
                                    ),
                                    child: const Icon(
                                      Icons.add,
                                      color: Colors.black,
                                      size: 30,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  const Text(
                                    'Watchlist',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              // width: 80,
                              height: 100,
                              decoration: BoxDecoration(
                                // color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(60.0),
                                      border: Border.all(
                                        color: ColorCodes.defaultGreenColor,
                                        width: 1.5,
                                      ),
                                    ),
                                    child: const Icon(
                                      Icons.more_vert,
                                      color: Colors.black,
                                      size: 30,
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  const Text(
                                    'More',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      // about movie
                      Text(
                        'A labourer named Pushpa makes enemies as he rises in the world of red sandalwood smuggling. However, violence erupts when the police attempt to bring down his illegal business.',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey[600],
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.all(5.0),
                            height: 26,
                            width: 58,
                            decoration: BoxDecoration(
                              color: Colors.yellow,
                              borderRadius: BorderRadius.circular(3.0),
                            ),
                            child: const Text(
                              'IMDb',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          const SizedBox(width: 5),
                          Text(
                            '8.5',
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Category: Action, Drama',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        'Language: Hindi',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                // tab bar
                const SizedBox(height: 20),
                SizedBox(
                  height: 820,
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 55,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Colors.grey[400]!,
                              width: 1.0,
                            ),
                          ),
                        ),
                        child: TabBar(
                          controller: tabController,
                          indicatorColor: ColorCodes.defaultGreenColor,
                          labelColor: Colors.black,
                          unselectedLabelColor: Colors.grey[600],
                          labelStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                          unselectedLabelStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                          tabs: const [
                            Tab(text: 'Related'),
                            Tab(text: 'More Details'),
                          ],
                        ),
                      ),
                      // tab bar view
                      Expanded(
                        child: TabBarView(
                          controller: tabController,
                          children: [
                            // related
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(height: 15),
                                  const Text(
                                    'Customers also watched',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const SizedBox(height: 15),
                                  Container(
                                    height: 88,
                                    width: 120,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[300],
                                      borderRadius: BorderRadius.circular(8.0),
                                      image: const DecorationImage(
                                        fit: BoxFit.fill,
                                        image: NetworkImage(
                                          'https://www.landscapeinstitute.org/wp-content/uploads/2022/06/Birmingham-commonwealth-games.jpg',
                                        ),
                                      ),
                                    ),
                                  ),
                                  // cast and crew
                                  const SizedBox(height: 20),
                                  const Text(
                                    'Cast & Crew',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const SizedBox(height: 15),
                                  const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: CastAndCrewWidget(
                                          imageUrl:
                                              'https://cdn.siasat.com/wp-content/uploads/2023/07/Allu-Arjun-660x495.jpg',
                                          name: 'Allu Arjun',
                                        ),
                                      ),
                                      Expanded(
                                        child: CastAndCrewWidget(
                                          imageUrl:
                                              'https://images.news18.com/ibnlive/uploads/2023/01/rashmika-mandanna-4.jpg',
                                          name: 'Rashmika',
                                        ),
                                      ),
                                      Expanded(
                                        child: CastAndCrewWidget(
                                          imageUrl:
                                              'https://m.behindwoods.com/tamil-movies/cinema-articles-photos/the-many-lives-of-fahadh-faasil-photos-pictures-stills.jpg',
                                          name: 'Fahadh Faasil',
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 15),
                                  const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: CastAndCrewWidget(
                                          imageUrl:
                                              'https://upload.wikimedia.org/wikipedia/commons/9/99/Samantha_at_10_Enradhukulla_Teaser_Launch.jpg',
                                          name: 'Samantha',
                                        ),
                                      ),
                                      Expanded(
                                        child: CastAndCrewWidget(
                                          imageUrl:
                                              'https://www.newstap.in/h-upload/2022/11/08/1434669-sunil.jpg',
                                          name: 'Sunil',
                                        ),
                                      ),
                                      Expanded(
                                        child: CastAndCrewWidget(
                                          // imageUrl:
                                          //     'https://static.toiimg.com/thumb/msid-80211585,width-400,resizemode-4/80211585.jpg',
                                          imageUrl:
                                              'https://www.southindiafashion.com/wp-content/uploads/2022/07/anasuya-bharadwaj-in-pink-saree-by-brand-mandir-for-jabardasth1.jpg',
                                          name: 'Anasuya',
                                        ),
                                      ),
                                    ],
                                  ),

                                  const SizedBox(height: 15),
                                  const Divider(
                                    color: ColorCodes.defaultGreenColor,
                                    thickness: 1.0,
                                  ),
                                  const SizedBox(height: 15),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const CastAndCrewWidget(
                                        imageUrl:
                                            'https://static.toiimg.com/thumb/msid-80211585,width-400,resizemode-4/80211585.jpg',
                                        name: 'Sukumar',
                                      ),
                                      const SizedBox(width: 10),
                                      // about director
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Text(
                                              'Director: ',
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            RichText(
                                              text: const TextSpan(
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.grey,
                                                ),
                                                children: [
                                                  TextSpan(
                                                      text:
                                                          'Sukumar worked as a mathematics and physics lecturer at a junior college in Kakinada for nearly seven years before pursuing a career in films as a director. He began working as a writer and worked with Editor Mohan before assisting V. V. Vinayak on Dil (2003). ')
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            // more details
                            Column(
                              children: [
                                const SizedBox(height: 15),
                                ListTile(
                                  title: const Text(
                                    'Starting',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  subtitle: Text(
                                    'Allu Arjun, Rashmika, Fahadh Faasil, Samantha, Sunil, Anasuya, Sukumar, Devi Sri Prasad, Mythri Movie Makers, Muttamsetty Media',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                ),
                                Divider(
                                  color: Colors.grey[400],
                                  thickness: 1.0,
                                ),
                                ListTile(
                                  title: const Text(
                                    'Genres',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  subtitle: Text(
                                    'Action, Drama',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                ),
                                Divider(
                                  color: Colors.grey[400],
                                  thickness: 1.0,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
