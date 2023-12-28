import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ott_info/Core/Themes/theme.dart';
import 'package:flutter_ott_info/Logic/Providers/bottom_nav_bar_provider.dart';
import 'package:flutter_ott_info/Logic/Providers/page_view_movies_provider.dart';
import 'package:flutter_ott_info/Logic/Providers/tab_bar_provier.dart';
import 'package:flutter_ott_info/Presentation/Pages/BottomNavBarPages/bottom_nav_bar_page.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarDividerColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark,
    ),
  );
  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => BottomNavBarProvider()),
        ChangeNotifierProvider(create: (context) => TabBarProvider()),
        ChangeNotifierProvider(create: (context) => PgaeViewMoviesProvier()),
      ],
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'OTTInfo',
        theme: LightTheme.lightTheme,
        home: const BottomNavBarPage(),
        builder: (context, child) {
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            child: child!,
          );
        },
      ),
    );
  }
}
