import 'package:flutter/material.dart';
import 'package:get/get.dart';

class onboarding_imageCard extends StatelessWidget {
  const onboarding_imageCard({
    super.key,
    required this.image,
  });
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 340,
      width: Get.width *0.9,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
                offset: Offset(0, 10),
                blurRadius: 20,
                color: Color.fromARGB(54, 0, 0, 0)),
          ],
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
    );
  }
}
