import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_gym/misc_screen.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          TextButton(
              onPressed: () {
                Get.changeTheme(ThemeData.dark());
              },
              child: Text("Dark")),
          TextButton(
              onPressed: () {
                Get.changeTheme(ThemeData.light());
              },
              child: Text("Light")),
          TextButton(
              onPressed: () {
                Get.to(MiscScreen());
              },
              child: Text("Go to Misc Page")),
        ],
      ),
    );
  }
}
