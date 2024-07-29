
import 'package:app_settings/app_settings.dart';
import 'package:get/get.dart';
abstract class HeadphonesController extends GetxController  {

  goToBluetoothSettings();
}

class  HeadphonesControllerImp extends HeadphonesController {
  @override
  goToBluetoothSettings() {

AppSettings.openAppSettings(type: AppSettingsType.bluetooth);



  }



  
}