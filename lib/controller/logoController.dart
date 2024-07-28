import 'dart:async';
import 'dart:developer';

import 'package:get/get.dart';
import 'package:smart_glass/core/constns/routes.dart';

abstract class LogoController extends GetxController {
  goToNextPage();
}

class LogoControllerImp extends LogoController {
  int time = 0;

  @override
  goToNextPage() {
    Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        if (time < 3) {
          time++;
          if (time == 3) {
            Get.offAllNamed(AppRoutes.onBoardingPage);
          }
        }
      },
    );

    update();
  }

  @override
  void onInit() {
    goToNextPage();
    super.onInit();
  }
}
