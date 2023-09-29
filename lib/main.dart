import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:getx_gym/favourite_app/list_home.dart';
import 'package:getx_gym/home.dart';
import 'package:getx_gym/obs/screen_one.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      //theme: ThemeData(),
      home: ListHome(),
    );
  }
}
