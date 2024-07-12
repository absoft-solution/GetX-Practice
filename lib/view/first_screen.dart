import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/services/counter_controller.dart';

class FirstScreen extends StatefulWidget {
   FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();

}

class _FirstScreenState extends State<FirstScreen> {
  final CounterController controller=Get.put(CounterController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Counter Screen'),),
    floatingActionButton: FloatingActionButton(onPressed: (){
controller.incrementCounter();
      },child: Icon(Icons.add),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Obx(()=>Text(controller.counter.toString()))),
        ],
      ),
    );
  }
}
