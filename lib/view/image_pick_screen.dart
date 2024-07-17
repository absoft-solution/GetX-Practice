import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/services/image_pick_controller.dart';

class ImagePickScreen extends StatefulWidget {
  const ImagePickScreen({super.key});

  @override
  State<ImagePickScreen> createState() => _ImagePickScreenState();
}

ImagePickController controller = Get.put(ImagePickController());

class _ImagePickScreenState extends State<ImagePickScreen> {
  @override
  Widget build(BuildContext context) {
    print("object");
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Picker with Getx"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Obx(
              () => CircleAvatar(
                radius: 50,
                backgroundImage: controller.imagePath.isNotEmpty
                    ? FileImage(File(controller.imagePath.toString()))
                    : null,
              ),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                controller.getImage();
              },
              child: Text("Pick Image"))
        ],
      ),
    );
  }
}
