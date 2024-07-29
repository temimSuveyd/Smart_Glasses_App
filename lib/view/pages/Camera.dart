import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';
import 'package:smart_glass/controller/cameraController.dart';
import 'package:smart_glass/core/constns/images.dart';
import 'package:smart_glass/view/widgets/camera/custom_Camera_mice_headfonButton.dart';

class CameraPage extends GetView<CameraControllerImp> {
  const CameraPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => CameraControllerImp());
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Camera",
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
                  child: const ModelViewer(
                      src: Appimages.glassesModel
                ),),
                const Spacer(),
                 GetBuilder<CameraControllerImp>(
          builder: (controller) => 
         Camera_Button(
            onTap: () {
          controller.startRecording();
            },
            color: controller.isRecording == true? Colors.red :  Colors.transparent,
            iconData:controller.isRecording == false? Icons.camera_alt: Icons.stop_circle  ,
          ),
        ),
                const SizedBox(height: 30)
              ],
            ),
          ],
        ));
  }
}
