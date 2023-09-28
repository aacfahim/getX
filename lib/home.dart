import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool _switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        Switch.adaptive(
          value: _switchValue,
          onChanged: (value) {
            _switchValue = value;
          },
        )
      ]),
      body: Column(children: [
        Text("Hello"),
        ElevatedButton(
            onPressed: () {
              Get.changeTheme(ThemeData.dark());
            },
            child: Text("Dark")),
        ElevatedButton(
            onPressed: () {
              Get.changeTheme(ThemeData.light());
            },
            child: Text("Light")),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
