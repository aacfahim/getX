import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class ApiController extends GetxController {
  final emailController = TextEditingController().obs;
  final passwordController = TextEditingController().obs;

  RxBool isLoading = false.obs;

  void signIn() async {
    String loginURL = "https://reqres.in/api/login";
    isLoading.value = true;

    try {
      var response = await post(Uri.parse(loginURL), body: {
        "email": emailController.value.text,
        "password": passwordController.value.text
      });
      var data = jsonDecode(response.body);
      if (response.statusCode == 200) {
        isLoading.value = false;
        Get.snackbar("Login Success", "You've joined");
      } else {
        isLoading.value = false;

        Get.snackbar("Failed", data.toString());
      }
    } catch (e) {
      isLoading.value = false;

      Get.snackbar("Failed", "Something went wrong $e");
    }
  }
}
