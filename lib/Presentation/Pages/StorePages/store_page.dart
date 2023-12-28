import 'package:flutter/material.dart';
import 'package:flutter_ott_info/Core/Themes/theme.dart';

class StorePage extends StatefulWidget {
  const StorePage({super.key});

  @override
  State<StorePage> createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
  List<String> priceList1 = ['Rs 209', 'Rs 49', 'Rs 99', 'Rs 79'];
  List<String> priceList2 = ['Rs 149', 'Rs 39', 'Rs 99', 'Rs 999'];
  List<String> priceList3 = ['Rs 79', 'Rs 29', 'Rs 49', 'Rs 99'];
  List<String> priceList4 = ['Rs 99', 'Rs 89', 'Rs 68'];
  List<String> priceList5 = ['Rs 149', 'Rs 69', 'Rs 99'];
  List<String> priceList6 = ['Rs 99', 'Rs 199', 'Rs 99'];

  List<String> imageUrl1 = [
    'https://www.naasongs.co/wp-content/uploads/2023/10/MAD-2023-250x250.jpg',
    'https://moviezwap.cyou/poster/irugapatru-2023-telugu.jpg',
    'https://i.pinimg.com/736x/c0/5b/92/c05b9232e2735febae8272e159fde82c.jpg',
    'https://i.pinimg.com/736x/90/13/c7/9013c795100091c351857e42e89354c3.jpg',
  ];

  List<String> imageUrl2 = [
    'https://imgcdn.ragalahari.com/sep2022/designs/adipurush-posters//adipurush-posters1t.jpg',
    'https://i.pinimg.com/originals/5e/57/f6/5e57f61c5a2ac72f2b6da7c54ada88b4.jpg',
    'https://i.pinimg.com/736x/50/f8/d7/50f8d7f707d3ec3fd0f747a1829c8a83.jpg',
    'https://i.pinimg.com/736x/9b/a8/cc/9ba8cc0062a41f8c2c2d664c6d1b0732.jpg',
  ];
  List<String> imageUrl3 = [
    'https://i.pinimg.com/736x/6d/89/dc/6d89dc9be0f33adfcf48b30dcfc09b8e.jpg',
    'https://i.pinimg.com/236x/8e/4e/13/8e4e131e7ee47cfbbd48b9e9ccffda23.jpg',
    'https://imgcdn.ragalahari.com/may2023/designs/gunturkaaram-posters/gunturkaaram-posters1t.jpg',
    'https://i.ytimg.com/vi/h5cz0oB3sRE/sddefault.jpg',
  ];

  List<String> imageUrl4 = [
    'https://images.moneycontrol.com/static-mcnews/2023/01/2-PATHAAN-POSTER.jpg',
    'https://e1.pxfuel.com/desktop-wallpaper/88/701/desktop-wallpaper-dhanush-mass-telugu-movie-posters.jpg',
    'https://i.ytimg.com/vi/oAIHjHcPgxk/maxresdefault.jpg',
  ];
  List<String> imageUrl5 = [
    'https://media.timeout.com/images/105903326/750/422/image.jpg',
    'https://www.bollywoodshaadis.com/img/article-l-2021926323290784547000.jpg',
    'https://static-koimoi.akamaized.net/wp-content/new-galleries/2015/11/ghayal-once-again-movie-poster-3.jpg',
  ];
  List<String> imageUrl6 = [
    'https://i.ytimg.com/vi/Vhldo272vO8/maxresdefault.jpg',
    'https://images.indianexpress.com/2020/03/sooryavanshi-759-3.jpg',
    'https://static.toiimg.com/thumb/msid-84412953,width-1070,height-580,imgsize-394133,resizemode-6,overlay-toi_sw,pt-32,y_pad-40/photo.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Store',
          style: TextStyle(
            fontSize: 20,
            color: ColorCodes.defaultGreenColor,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Column(
            children: [
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
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
                    const Text(
                      'Rent Videos',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      '(12 Videos)',
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              // rent videos
              const SizedBox(height: 15),
              SizedBox(
                height: 350,
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              margin: const EdgeInsets.symmetric(horizontal: 2),
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(8.0),
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage(
                                    imageUrl1[index],
                                  ),
                                ),
                              ),
                              height: 110,
                              width: 160,
                            ),
                            // price tag on right top
                            Positioned(
                              top: 0,
                              right: 3,
                              child: Container(
                                alignment: Alignment.center,
                                width: 48,
                                height: 22,
                                decoration: const BoxDecoration(
                                  color: ColorCodes.defaultGreenColor,
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8.0),
                                    topRight: Radius.circular(8),
                                  ),
                                ),
                                child: Text(
                                  priceList1[index],
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        Stack(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              margin: const EdgeInsets.symmetric(horizontal: 2),
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(8.0),
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage(
                                    imageUrl2[index],
                                  ),
                                ),
                              ),
                              height: 110,
                              width: 160,
                            ),
                            // price tag on right top
                            Positioned(
                              top: 0,
                              right: 3,
                              child: Container(
                                alignment: Alignment.center,
                                width: 48,
                                height: 22,
                                decoration: const BoxDecoration(
                                  color: ColorCodes.defaultGreenColor,
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8.0),
                                    topRight: Radius.circular(8),
                                  ),
                                ),
                                child: Text(
                                  priceList2[index],
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        Stack(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              margin: const EdgeInsets.symmetric(horizontal: 2),
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(8.0),
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage(
                                    imageUrl3[index],
                                  ),
                                ),
                              ),
                              height: 110,
                              width: 160,
                            ),
                            // price tag on right top
                            Positioned(
                              top: 0,
                              right: 2,
                              child: Container(
                                alignment: Alignment.center,
                                width: 48,
                                height: 22,
                                decoration: const BoxDecoration(
                                  color: ColorCodes.defaultGreenColor,
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8.0),
                                    topRight: Radius.circular(8),
                                  ),
                                ),
                                child: Text(
                                  priceList3[index],
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    );
                  },
                ),
              ),
              // 2nd list
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
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
                    const Text(
                      'Rent Videos',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      '(12 Videos)',
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              // rent videos
              const SizedBox(height: 15),
              SizedBox(
                height: 350,
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Stack(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              margin: const EdgeInsets.symmetric(horizontal: 2),
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(8.0),
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage(
                                    imageUrl4[index],
                                  ),
                                ),
                              ),
                              height: 110,
                              width: 160,
                            ),
                            // price tag on right top
                            Positioned(
                              top: 0,
                              right: 2,
                              child: Container(
                                alignment: Alignment.center,
                                width: 48,
                                height: 22,
                                decoration: const BoxDecoration(
                                  color: ColorCodes.defaultGreenColor,
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8.0),
                                    topRight: Radius.circular(8),
                                  ),
                                ),
                                child: Text(
                                  priceList4[index],
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        Stack(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              margin: const EdgeInsets.symmetric(horizontal: 2),
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(8.0),
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage(
                                    imageUrl5[index],
                                  ),
                                ),
                              ),
                              height: 110,
                              width: 160,
                            ),
                            // price tag on right top
                            Positioned(
                              top: 0,
                              right: 3,
                              child: Container(
                                alignment: Alignment.center,
                                width: 48,
                                height: 22,
                                decoration: const BoxDecoration(
                                  color: ColorCodes.defaultGreenColor,
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8.0),
                                    topRight: Radius.circular(8),
                                  ),
                                ),
                                child: Text(
                                  priceList5[index],
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        Stack(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              margin: const EdgeInsets.symmetric(horizontal: 2),
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(8.0),
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage(
                                    imageUrl6[index],
                                  ),
                                ),
                              ),
                              height: 110,
                              width: 160,
                            ),
                            // price tag on right top
                            Positioned(
                              top: 0,
                              right: 3,
                              child: Container(
                                alignment: Alignment.center,
                                width: 48,
                                height: 22,
                                decoration: const BoxDecoration(
                                  color: ColorCodes.defaultGreenColor,
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8.0),
                                    topRight: Radius.circular(8),
                                  ),
                                ),
                                child: Text(
                                  priceList6[index],
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    );
                  },
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
