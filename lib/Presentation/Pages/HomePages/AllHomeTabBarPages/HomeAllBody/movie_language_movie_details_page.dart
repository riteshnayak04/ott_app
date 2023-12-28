import 'package:flutter/material.dart';
import 'package:flutter_ott_info/Core/Themes/theme.dart';

class MovieLanguageDetailsPage extends StatelessWidget {
  const MovieLanguageDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Movie Languages',
          style: TextStyle(
            fontSize: 20,
            color: ColorCodes.defaultGreenColor,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: const Center(
        child: Text('Movie Languages Details'),
      ),
    );
  }
}
