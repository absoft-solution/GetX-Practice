import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class LoginController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  login() async {
    final response =
        await post(Uri.parse("https://reqres.in/api/login"), body: {
      'email': emailController.text.toString(),
      'password': passwordController.text.toString()
    });

    if (response.statusCode == 200) {
      Get.snackbar("Login", "Success");
    } else {
      Get.snackbar("Login", "Failed");
    }
  }
}
