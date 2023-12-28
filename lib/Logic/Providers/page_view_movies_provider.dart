import 'package:flutter/material.dart';

class PgaeViewMoviesProvier with ChangeNotifier {
  int currentPage = 0;

  List allImage = [
    'https://img.onmanorama.com/content/dam/mm/en/entertainment/entertainment-news/images/2023/2/2/christopher-mammootty-release-date.jpg',
    'https://wallpapercave.com/wp/wp6907693.jpg',
    'https://images.hungama.com/c/1/c6b/289/104750771/104750771_1280x800.jpg',
    'https://i.pinimg.com/736x/c0/5b/92/c05b9232e2735febae8272e159fde82c.jpg',
    'https://www.naasongs.co/wp-content/uploads/2023/10/MAD-2023-250x250.jpg',
    'https://imgcdn.ragalahari.com/sep2022/designs/adipurush-posters//adipurush-posters1t.jpg',
  ];

  PageController pageController = PageController();

  void setCurrentPage(int index) {
    currentPage = index;

    notifyListeners();
  }
}
