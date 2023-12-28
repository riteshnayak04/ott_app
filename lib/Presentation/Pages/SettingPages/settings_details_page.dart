import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsDetailsPage extends StatefulWidget {
  const SettingsDetailsPage({super.key});

  @override
  State<SettingsDetailsPage> createState() => _SettingsDetailsPageState();
}

class _SettingsDetailsPageState extends State<SettingsDetailsPage> {
  final title = Get.arguments;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '$title',
          style: const TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
      ),
      body: Center(
        child: Text(
          '$title',
          style: const TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
