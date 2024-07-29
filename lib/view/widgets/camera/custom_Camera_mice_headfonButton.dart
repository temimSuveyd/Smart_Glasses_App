import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_glass/core/constns/colors.dart';

class Camera_Button extends StatelessWidget {
  const Camera_Button({
    super.key, required this.iconData, required this.color, required this.onTap,
  });
final IconData iconData;
final Color color;
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
          color: color,
            borderRadius: BorderRadius.circular(40),
            border: Border.all(color: Appcolors.textColor, width: 3)),
        child:  Center(
          child: Icon(
            iconData,
            size: 40,
          ),
        ),
      ),
    );
  }
}
