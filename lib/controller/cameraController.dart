
import 'package:app_settings/app_settings.dart';
import 'package:get/get.dart';
abstract class CameraController extends GetxController  {

  goToBluetoothSettings();
}

class  CameraControllerImp extends CameraController {
  @override
  goToBluetoothSettings() {

AppSettings.openAppSettings(type: AppSettingsType.bluetooth);



  }



  
}