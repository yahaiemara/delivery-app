import 'package:deliveryapp/core/constant/routes.dart';
import 'package:deliveryapp/core/services/services.dart';

import 'package:get/get.dart';

abstract class SettingController extends GetxController{
  logout();
}
class SettingControllerImp extends SettingController{
  MyServices myServices=Get.find();
  @override
  logout() {
   
    // myServices.sharedPreferences.clear();
    Get.offNamed(AppRoute.login);
    
  }

}