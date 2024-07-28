import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_glass/controller/onBoardingController.dart';
import 'package:smart_glass/core/constns/colors.dart';
import 'package:smart_glass/data/dataScore/static/onBoardingData.dart';
import 'package:smart_glass/view/widgets/onboarding/custom_nextButton.dart';

class onBoarding_DotListGenerate extends StatelessWidget {
  const onBoarding_DotListGenerate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => OnboardingcontrollerImp());
    return GetBuilder<OnboardingcontrollerImp>(
      builder: (controller) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
              onBoardingData.length,
              (index) => Container(
                margin: const EdgeInsets.symmetric(horizontal: 2),
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: controller.pageNo == index
                        ? Colors.black12
                        : Color.fromARGB(178, 44, 44, 44)),
              ),
            ),
            const Spacer(),
            controller.pageNo == onBoardingData.length - 1
                ? OnBoarding_NextButton(onTap: () {
                  controller.goToHome();
                },
                
                )
                : const SizedBox()
          ],
        ),
      ),
    );
  }
}


