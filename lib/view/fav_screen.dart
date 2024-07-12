import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../services/fav_controller.dart';

class FavScreen extends StatefulWidget {
  const FavScreen({super.key});

  @override
  State<FavScreen> createState() => _FavScreenState();
}

FavController controller = Get.put(FavController());

class _FavScreenState extends State<FavScreen> {
  @override
  Widget build(BuildContext context) {
    print("object");
    return Scaffold(
      appBar: AppBar(
        title: Text("Fav Screen"),
      ),
      body: ListView.builder(
          itemCount: controller.favList.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                onTap: () {
                  if (controller.tempFavList
                      .contains(controller.favList[index].toString())) {
                    controller.removeItem(controller.favList[index].toString());
                  } else {
                    controller.addItem(controller.favList[index].toString());
                  }
                },
                title: Text(controller.favList[index].toString()),
                trailing: Obx(() => Icon(
                      Icons.favorite,
                      color: controller.tempFavList
                              .contains(controller.favList[index].toString())
                          ? Colors.red
                          : Colors.white,
                    )),
              ),
            );
          }),
    );
  }
}
