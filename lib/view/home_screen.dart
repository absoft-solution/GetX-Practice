import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/view/first_screen.dart';

import 'fav_screen.dart';

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
        Get.to(FavScreen());
      }),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ListTile(
              title: Text('message'.tr),
              subtitle: Text('name'.tr),
            ),
             TextButton(onPressed: (){
                Get.updateLocale(Locale('en','US'));
             },child: Text("English"),),
            TextButton(onPressed: (){
              Get.updateLocale(Locale('ur','PK'));
            },child: Text("Urdu"),),
          ],
        ),
      ),
    );
  }
}
