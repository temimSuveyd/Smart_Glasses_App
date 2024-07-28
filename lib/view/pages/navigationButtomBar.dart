import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_glass/controller/buttonNavigationBarController.dart';
import 'package:smart_glass/core/constns/colors.dart';
import 'package:smart_glass/view/widgets/navigationButtomBar/custom_Button.dart';

class BUttomNavigaionBar extends StatelessWidget {
  const BUttomNavigaionBar({super.key});

  @override
  Widget build(BuildContext context) {

    Get.lazyPut(() =>NavigationButtomBarControllerImp() );

    return GetBuilder<NavigationButtomBarControllerImp>(
      builder: (controller) => 
       Scaffold(
       
        bottomNavigationBar: BottomAppBar(
          
          height: 50,
          color: Colors.transparent,
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ...List.generate(
                  3,
                  (index) =>  ButtomNavigationBar_Button(
                    onTap: () {
                      controller.cgangPage(index);
                    },
                        color: controller.pageNo == index ? Appcolors.textColor :Colors.transparent,
                        iconData: controller.iconList[index],
                      ))
            ],
          ),
        ),
        body: controller.pagesList.elementAt(controller.pageNo),
      ),
    );
  }
}
