import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_glass/core/services/services.dart';
import 'package:smart_glass/routes.dart';



void main()async {

  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
 getPages: getPages,
debugShowCheckedModeBanner: false,

   );

    
  }
}
