import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_glass/controller/logoController.dart';
import 'package:smart_glass/core/constns/colors.dart';
import 'package:smart_glass/core/constns/images.dart';

class LogoPage extends StatelessWidget {
  const LogoPage({super.key});

  @override
  Widget build(BuildContext context) {

    Get.put(LogoControllerImp());
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
           mainAxisAlignment: MainAxisAlignment.center,
        
            children: [
              Image.asset(
                Appimages.logo,
                height: 250,
                width: 250,
              ),
              const Text(
                "SMART GLASS",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700,color: Appcolors.textColor),
              )
            ],
          ),
        ],
      ),
    );
  }
}
