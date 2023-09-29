import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_gym/obs/example_controller.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({super.key});

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  ExampleController exampleController = Get.put(ExampleController());
  @override
  Widget build(BuildContext context) {
    print("Built");
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => Switch(
              value: exampleController.notification.value,
              onChanged: (value) {
                exampleController.setNotification(value);
              },
            ),
          )
        ],
      ),
    );
  }
}
