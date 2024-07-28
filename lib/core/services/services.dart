import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppServise extends GetxService {
  late  SharedPreferences sharedPreferences;
  Future <AppServise> init ()async{
    sharedPreferences = await SharedPreferences.getInstance();
    return this;
  }
}


initialServices()async{
await Get.putAsync(() => AppServise().init(),);


}