import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';
import 'package:smart_glass/controller/headphonesController.dart';
import 'package:smart_glass/core/constns/images.dart';
import 'package:smart_glass/view/widgets/headphones/custom_headphoneButton.dart';

class HeadphonesPage extends GetView<HeadphonesControllerImp> {
  const HeadphonesPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => HeadphonesControllerImp());

    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Headphones",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          actions: [
            IconButton(
                onPressed: () {
                  controller.goToBluetoothSettings();
                },
                icon: const Icon(
                  Icons.bluetooth,
                  size: 30,
                )),
          ],
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: Get.width * 0.9,
                  height: 400,
                  child: const ModelViewer(src: Appimages.glassesModel),
                ),
                const Spacer(),
                const Headphone_Button(),
                const SizedBox(height: 30)
              ],
            ),
          ],
        ));
  }
}
