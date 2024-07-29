import 'package:get/get.dart';
import 'package:smart_glass/core/constns/routes.dart';
import 'package:smart_glass/core/middleware/middleware.dart';
import 'package:smart_glass/view/pages/Camera.dart';
import 'package:smart_glass/view/pages/headphones.dart';
import 'package:smart_glass/view/pages/mic.dart';
import 'package:smart_glass/view/pages/navigationButtomBar.dart';
import 'package:smart_glass/view/pages/onboarding.dart';

List<GetPage<dynamic>> getPages = [
  GetPage(
      name: "/",
      page: () => const OnboardingPage(),
      middlewares: [AppMiddleWare()]),
  GetPage(name: AppRoutes.onBoardingPage, page: () => const OnboardingPage()),
  GetPage(name: AppRoutes.cameraPage, page: () => const CameraPage()),
  GetPage(name: AppRoutes.micPage, page: () => const MicPage()),
  GetPage(name: AppRoutes.headphonePage, page: () => const HeadphonesPage()),
  GetPage(name: AppRoutes.bUttomNavigaionBar,page: () => const BUttomNavigaionBar()),
];
