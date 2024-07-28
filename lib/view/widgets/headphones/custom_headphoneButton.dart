import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_glass/core/constns/colors.dart';

class Headphone_Button extends StatelessWidget {
  const Headphone_Button({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          border: Border.all(color: Appcolors.textColor, width: 3)),
      child: const Center(
        child: Icon(
          Icons.headphones,
          size: 40,
        ),
      ),
    );
  }
}
