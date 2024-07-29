import 'package:app_settings/app_settings.dart';
import 'package:get/get.dart';

abstract class MicController extends GetxController {
  goToBluetoothSettings();
  startRecording();
}

class MiccontrollerImp extends MicController {
  bool isRecording = false;

  @override
  goToBluetoothSettings() {
    AppSettings.openAppSettings(type: AppSettingsType.bluetooth);
  }

  @override
  startRecording() {
    if (isRecording == false) {
      isRecording = true;
    } else {
      isRecording = false;
    }

    update();
  }
}
