import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_gym/api/apiController.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({super.key});
  ApiController controller = Get.put(ApiController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign In"),
      ),
      body: Column(
        children: [
          Text("Sign in to your account"),
          TextField(
            controller: controller.emailController.value,
            decoration: InputDecoration(
                label: Text("Email"),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                )),
          ),
          TextField(
            controller: controller.passwordController.value,
            decoration: InputDecoration(
                label: Text("Password"),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.0),
                )),
          ),
          Obx(() {
            return ElevatedButton(
                onPressed: () {
                  controller.signIn();
                },
                child: controller.isLoading.value
                    ? CircularProgressIndicator()
                    : Container(child: Text("Login")));
          })
        ],
      ),
    );
  }
}
