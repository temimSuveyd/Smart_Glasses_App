import 'package:flutter/material.dart';
import 'package:flutter_blue/flutter_blue.dart';
import 'package:get/get.dart';
import 'package:smart_glass/controller/bluetootheController.dart';

class BluetoothPage extends GetView<BluetoothecontrollerImp> {
  const BluetoothPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => BluetoothecontrollerImp());
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  controller.scanDevices();
                },
                icon: const Icon(Icons.restart_alt))
          ],
        ),
        body: StreamBuilder<List<ScanResult>>(
          stream: controller.flutterBlue.scanResults,
          builder: (c, snapshot) {
            if (!snapshot.hasData) {
              return const Center(child: CircularProgressIndicator());
            }

            return ListView(
              children: snapshot.data!.map((result) {
                return ListTile(
                  title: Text(result.device.name),
                  subtitle: Text(result.device.id.toString()),
                  onTap: () {
                    // Cihaza bağlanmak için burada işlem yapabilirsiniz
                  },
                );
              }).toList(),
            );
          },
        ));
  }
}
