import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MiscScreen extends StatelessWidget {
  const MiscScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Misc Page")),
      body: TextButton(
        onPressed: () {
          Get.back();
        },
        child: Text("Go to back page"),
      ),
    );
  }
}
