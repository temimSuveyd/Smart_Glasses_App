import 'package:get/get.dart';
import 'package:smart_glass/core/constns/routes.dart';

abstract class MicController extends GetxController  {
  

  goToBluetoothPage();
}

class  MiccontrollerImp extends MicController {
  @override
  goToBluetoothPage() {
Get.toNamed(AppRoutes.bluetoothPage);
  }
  
}