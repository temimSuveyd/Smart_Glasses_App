import 'package:get/get.dart';
import 'package:smart_glass/core/constns/routes.dart';
import 'package:smart_glass/core/services/services.dart';

abstract class OnboardingController  extends GetxController{
  onPageChanged(int value);
  goToHome();
}


class  OnboardingcontrollerImp extends OnboardingController {

AppServise appServise = Get.find();
int pageNo = 0;



  @override
  onPageChanged(value) {
pageNo = value;
update();
  }
  
  @override
  goToHome() {
Get.offAllNamed(AppRoutes.cameraPage);
appServise.sharedPreferences.setBool("onBoarding", true);
  }
  
}