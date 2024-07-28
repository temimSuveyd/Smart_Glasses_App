import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:smart_glass/core/constns/routes.dart';
import 'package:smart_glass/core/services/services.dart';

class AppMiddleWare extends GetMiddleware {
  AppServise appServise = Get.find();

  RouteSettings? redirect(String? route) {
    if (appServise.sharedPreferences.getBool("onBoarding") == true) {
      return const RouteSettings(name: AppRoutes.bUttomNavigaionBar);
    } else {
      return const RouteSettings(name: AppRoutes.onBoardingPage);
    }
  }
}
