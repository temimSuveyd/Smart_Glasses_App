import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smart_glass/view/widgets/onboarding/custom_dotListGenerate.dart';
import 'package:smart_glass/view/widgets/onboarding/custom_pageView.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 30,
            child: onBoarding_pageView(),
          ),
          Expanded(
            flex: 2,
            child: onBoarding_DotListGenerate(),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
