import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
        ],
      ),
    );
  }
}
