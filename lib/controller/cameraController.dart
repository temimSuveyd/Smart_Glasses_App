import 'package:app_settings/app_settings.dart';
import 'package:get/get.dart';

abstract class CameraController extends GetxController {
  goToBluetoothSettings();

  startRecording();
}

class CameraControllerImp extends CameraController {
  bool isRecording = false;

  @override
  goToBluetoothSettings() {
    AppSettings.openAppSettings(type: AppSettingsType.bluetooth);
  }

  @override
  startRecording() {
    if (isRecording == true) {
      isRecording = false;
    } else {
      isRecording = true;
    }
    update();
  }
}
