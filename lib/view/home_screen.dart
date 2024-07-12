import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home Screen'),),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Get.snackbar(
          "Hi","Hello"
        );
      }),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             TextButton(onPressed: (){
                Get.toNamed('/first_screen');
             },child: Text("Go to 1st Screen"),),
            TextButton(onPressed: (){
              Get.toNamed('/second_screen');
            },child: Text("Go to 2nd Screen"),),
          ],
        ),
      ),
    );
  }
}
