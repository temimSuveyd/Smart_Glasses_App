import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_glass/core/constns/colors.dart';

class Mic_Button extends StatelessWidget {
  const Mic_Button({
    super.key, required this.onTap,
  });
final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        width: 80,
        height: 80,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(40),
            border: Border.all(color: Appcolors.textColor, width: 3)),
        child: const Center(
          child: Icon(
            Icons.mic,
            size: 40,
          ),
        ),
      ),
    );
  }
}
