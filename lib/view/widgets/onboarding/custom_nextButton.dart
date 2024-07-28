import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smart_glass/core/constns/colors.dart';

class OnBoarding_NextButton extends StatelessWidget {
  const OnBoarding_NextButton({
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
          width: 45,
          height: 46,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Appcolors.textColor,
          ),
          child: const Center(
            child: Icon(
              Icons.navigate_next_outlined,
              size: 40,
              color: Colors.white,
            ),
          ),
        ),
    );
  }
}