import 'package:flutter/material.dart';
import 'package:flutter_ott_info/Core/Themes/theme.dart';

class MovieGenresDetailsPage extends StatelessWidget {
  const MovieGenresDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Movie Genres Details',
          style: TextStyle(
            fontSize: 20,
            color: ColorCodes.defaultGreenColor,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: const Center(
        child: Text('Movie Genres Details'),
      ),
    );
  }
}
