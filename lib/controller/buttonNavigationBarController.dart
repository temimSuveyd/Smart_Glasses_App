import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_glass/view/pages/Camera.dart';
import 'package:smart_glass/view/pages/headphones.dart';
import 'package:smart_glass/view/pages/mic.dart';

abstract class NavigationButtomBarController extends GetxController {
  cgangPage(int index);
}

class NavigationButtomBarControllerImp extends NavigationButtomBarController {
  int pageNo = 0;
  List pagesList = [
    const MicPage(),
    const CameraPage(),
    const HeadphonesPage(),
  ];

  List iconList = [
    Icons.mic_rounded,
    Icons.camera_alt_rounded,
    Icons.headphones_rounded,
  ];
  @override
  cgangPage(index) {
    pageNo = index;
    update();
  }
}
