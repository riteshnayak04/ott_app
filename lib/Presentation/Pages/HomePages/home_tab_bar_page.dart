import 'package:flutter/material.dart';
import 'package:flutter_ott_info/Core/Themes/theme.dart';
import 'package:flutter_ott_info/Logic/Providers/tab_bar_provier.dart';
import 'package:provider/provider.dart';

class HomeTabBarPage extends StatefulWidget {
  const HomeTabBarPage({super.key});

  @override
  State<HomeTabBarPage> createState() => _HomeTabBarPageState();
}

class _HomeTabBarPageState extends State<HomeTabBarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Consumer<TabBarProvider>(
        builder: (context, value, child) {
          return NestedScrollView(
            floatHeaderSlivers: true,
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  floating: true,
                  pinned: true,
                  title: const Text(
                    'dadu',
                    style: TextStyle(
                      color: ColorCodes.defaultGreenColor,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  centerTitle: true,
                  bottom: PreferredSize(
                    preferredSize: const Size.fromHeight(50.0),
                    child: Container(
                      color: Colors.transparent,
                      width: double.infinity,
                      height: 50.0,
                      child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        itemCount: value.myTabs.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              value.changeIndex(index);
                            },
                            child: AnimatedContainer(
                              alignment: Alignment.center,
                              duration: const Duration(milliseconds: 300),
                              child: Container(
                                alignment: Alignment.center,
                                margin: const EdgeInsets.all(10.0),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 11.0),
                                decoration: BoxDecoration(
                                  color: value.selectedIndex == index
                                      ? Colors.grey[300]
                                      : Colors.transparent,
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                                child: Center(
                                  child: Text(
                                    value.myTabs[index],
                                    style: TextStyle(
                                      color: value.selectedIndex == index
                                          ? Colors.black
                                          : Colors.grey[600],
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ];
            },
            body: value.myBody[value.selectedIndex],
          );
        },
      ),
    );
  }
}
