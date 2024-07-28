import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smart_glass/core/constns/colors.dart';

class ButtomNavigationBar_Button extends StatelessWidget {
  const ButtomNavigationBar_Button({
    super.key, required this.color, required this.iconData, required this.onTap,
  });
final Color color ;
final IconData iconData;
final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
        width: 70,
        height: 50,
        decoration:  BoxDecoration(
            border: Border(
                bottom:
                    BorderSide(color: color, width: 4))),
        child:  Column(
          children: [
            Icon(iconData
           ,
              size: 40,
              color: Appcolors.textColor,
            )
          ],
        ),
      ),
    );
  }
}
