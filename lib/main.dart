import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/services/lang_services.dart';
import 'package:getx_practice/view/first_screen.dart';
import 'package:getx_practice/view/home_screen.dart';
import 'package:getx_practice/view/second_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      translations: LangServices(),
      locale: Locale('en','US'),
      fallbackLocale: Locale('ur','PK'),
      home: HomeScreen(),
      getPages: [
        GetPage(name: '/second_screen', page: ()=>SecondScreen()),
        GetPage(name: '/first_screen', page: ()=>FirstScreen()),

      ],
    );
  }
}
