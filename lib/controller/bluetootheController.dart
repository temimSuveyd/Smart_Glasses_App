import 'dart:developer';

import 'package:flutter_blue/flutter_blue.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';

abstract class BluetoothController extends GetxController {
  scanDevices();
  connectToAevice(BluetoothDevice device);
}

class BluetoothecontrollerImp extends BluetoothController {
  @override
FlutterBlue flutterBlue = FlutterBlue.instance;
  @override
  Future scanDevices() async {
    



// Scan for devices
flutterBlue.startScan(timeout: Duration(seconds: 4));

// Cihazların bulunması durumunda, cihazları listeleyin
flutterBlue.scanResults.listen((results) {
  for (ScanResult r in results) {
    print('${r.device.name} found! ${r.device.id}');
  }
});
  }



  Stream<List<ScanResult>> get scanResult => flutterBlue.scanResults;

  @override
  Future connectToAevice(device) async {
    await device.connect(timeout: const Duration(seconds: 10));
    device.disconnect();
    device.state.listen(
      (event) {
        if (event == BluetoothDeviceState.connected) {
          log("${device.name}");
        } else if (event == BluetoothDeviceState.connecting) {
          log("${device.name}");
        } else if (event == BluetoothDeviceState.disconnected) {
          log("${device.name}");
        }
      },
    );
  }

  @override
  void onInit() {
    scanDevices();

    super.onInit();
  }
}
