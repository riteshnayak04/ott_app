import 'package:flutter/material.dart';
import 'package:flutter_ott_info/Core/Themes/theme.dart';
import 'package:flutter_ott_info/Presentation/Pages/SettingPages/settings_details_page.dart';
import 'package:get/get.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  List<String> allTitles = [
    'Account details',
    'Activate your Tv',
    'Watchlist',
    'Purchase',
    'Downloads',
    'Subscriptions',
    'Transactions',
    'Language',
    'Notifications',
    'Clear cache',
    'You are not Signed in',
    'Rate us',
    'Share app',
    'About us',
    'Privacy policy',
    'Terms and conditions',
    'Refund policy',
  ];

  List<String> allSubtitles = [
    'Manage your profile',
    'Activate your Tv app by adding Tv app code here.',
    'View your watchlist video & tv shows',
    'View your purchase video & tv shows',
    'Manage your downloads',
    'Upgrade to get more out of your subscription',
    'View your past transactions',
    '',
    'Receive push notifications',
    'Clear locally cached data',
    'Sign in',
    'Rate our app in appstore',
    'Share app with your friends',
    '',
    '',
    '',
    '',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Settings',
            style: TextStyle(
              fontSize: 20,
              color: ColorCodes.defaultGreenColor,
              fontWeight: FontWeight.w600,
            ),
          ),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: allTitles.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                ListTile(
                  dense: false,
                  contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                  onTap: () {
                    if (index == 0) {
                      Get.to(
                        transition: Transition.rightToLeft,
                        () => const SettingsDetailsPage(),
                        arguments: allTitles[index],
                      );
                    } else if (index == 1) {
                      Get.to(
                        transition: Transition.rightToLeft,
                        () => const SettingsDetailsPage(),
                        arguments: allTitles[index],
                      );
                    } else if (index == 2) {
                      Get.to(
                        transition: Transition.rightToLeft,
                        () => const SettingsDetailsPage(),
                        arguments: allTitles[index],
                      );
                    } else if (index == 3) {
                      Get.to(
                        transition: Transition.rightToLeft,
                        () => const SettingsDetailsPage(),
                        arguments: allTitles[index],
                      );
                    } else if (index == 4) {
                      Get.to(
                        transition: Transition.rightToLeft,
                        () => const SettingsDetailsPage(),
                        arguments: allTitles[index],
                      );
                    } else if (index == 5) {
                      Get.to(
                        transition: Transition.rightToLeft,
                        () => const SettingsDetailsPage(),
                        arguments: allTitles[index],
                      );
                    } else if (index == 6) {
                      Get.to(
                        transition: Transition.rightToLeft,
                        () => const SettingsDetailsPage(),
                        arguments: allTitles[index],
                      );
                    } else if (index == 7) {
                      Get.to(
                        transition: Transition.rightToLeft,
                        () => const SettingsDetailsPage(),
                        arguments: allTitles[index],
                      );
                    } else if (index == 8) {
                      Get.to(
                        transition: Transition.rightToLeft,
                        () => const SettingsDetailsPage(),
                        arguments: allTitles[index],
                      );
                    } else if (index == 9) {
                      Get.to(
                        transition: Transition.rightToLeft,
                        () => const SettingsDetailsPage(),
                        arguments: allTitles[index],
                      );
                    } else if (index == 10) {
                      Get.to(
                        transition: Transition.rightToLeft,
                        () => const SettingsDetailsPage(),
                        arguments: allTitles[index],
                      );
                    } else if (index == 11) {
                      Get.to(
                        transition: Transition.rightToLeft,
                        () => const SettingsDetailsPage(),
                        arguments: allTitles[index],
                      );
                    } else if (index == 12) {
                      Get.to(
                        transition: Transition.rightToLeft,
                        () => const SettingsDetailsPage(),
                        arguments: allTitles[index],
                      );
                    } else if (index == 13) {
                      Get.to(
                        transition: Transition.rightToLeft,
                        () => const SettingsDetailsPage(),
                        arguments: allTitles[index],
                      );
                    } else if (index == 14) {
                      Get.to(
                        transition: Transition.rightToLeft,
                        () => const SettingsDetailsPage(),
                        arguments: allTitles[index],
                      );
                    } else if (index == 15) {
                      Get.to(
                        transition: Transition.rightToLeft,
                        () => const SettingsDetailsPage(),
                        arguments: allTitles[index],
                      );
                    } else if (index == 16) {
                      Get.to(
                        transition: Transition.rightToLeft,
                        () => const SettingsDetailsPage(),
                        arguments: allTitles[index],
                      );
                    } else if (index == 17) {
                      Get.to(
                        transition: Transition.rightToLeft,
                        () => const SettingsDetailsPage(),
                        arguments: allTitles[index],
                      );
                    }
                  },
                  title: Text(
                    allTitles[index],
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  subtitle: Text(
                    allSubtitles[index],
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[600],
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Divider(
                  height: 0,
                  thickness: 0.5,
                  indent: 20,
                  endIndent: 20,
                  color: Colors.grey[500],
                ),
              ],
            );
          },
        ));
  }
}
