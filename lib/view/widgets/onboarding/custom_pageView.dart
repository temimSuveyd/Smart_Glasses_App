import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_glass/controller/onBoardingController.dart';
import 'package:smart_glass/core/constns/colors.dart';
import 'package:smart_glass/data/dataScore/static/onBoardingData.dart';
import 'package:smart_glass/view/widgets/onboarding/custom_card.dart';

class onBoarding_pageView extends GetView<OnboardingcontrollerImp> {
  const onBoarding_pageView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

Get.lazyPut(() => OnboardingcontrollerImp());

    return PageView.builder(
      itemCount: onBoardingData.length,
      onPageChanged: (value) {
controller.onPageChanged(value);
      },
      itemBuilder: (context, index) => Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Text(
            onBoardingData[index].title1,
            style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Appcolors.textColor),
          ),
          const SizedBox(
            height: 20,
          ),
          onboarding_imageCard(
            image: onBoardingData[index].image,
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              
              onBoardingData[index].title2,textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              onBoardingData[index].text,
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black54),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
