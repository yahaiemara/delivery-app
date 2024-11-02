
import 'package:deliveryapp/core/class/statusrequest.dart';
import 'package:deliveryapp/core/constant/routes.dart';
import 'package:deliveryapp/core/functions/handlingData.dart';
import 'package:deliveryapp/core/services/services.dart';
import 'package:deliveryapp/data/remote/auth/delivery.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
abstract class LoginController extends GetxController {
  login();
  goToSignUp();
  goToForgetPassword();
  
}

class LoginControllerImp extends LoginController {
  GlobalKey<FormState> formstate = GlobalKey<FormState>();

  late TextEditingController email;
  late TextEditingController password;
  DeliveryData deliveryDatas=DeliveryData(Get.find());
  StatusRequest? statusRequest=StatusRequest.none;
  bool isshowpassword = true;
  MyServices myservices=Get.find();
  showPassword() {
    isshowpassword = isshowpassword == true ? false : true;
    update();
  }

  @override
  login() async{
         var formData = formstate.currentState;
    if (formData!.validate()) {
      formData.save();
     statusRequest=StatusRequest.loading;
     update();
    var response=await deliveryDatas.getData(email.text,password.text);
    print("====================Controller $response");
    statusRequest=handlingData(response);
    if(StatusRequest.success==statusRequest){
    if(response['status']=='success'){
     myservices.sharedPreferences.setString("id",response['delivery']['delivery_id']);
     myservices.sharedPreferences.setString("username",response['delivery']['delivery_name']);
     myservices.sharedPreferences.setString("email",response['delivery']['delivery_email']);
     myservices.sharedPreferences.setString("phone",response['delivery']['delivery_phone']);
      Get.offNamed(AppRoute.homescreen);
    }if (response['status'] == 'fail') {
  String message = response['message'];
  Get.snackbar(
    "Signup Failed",
    message,  
    snackPosition: SnackPosition.BOTTOM,
    backgroundColor: Colors.red,
    colorText: Colors.white,
    duration:const Duration(seconds: 3),
  );
 }
    else{
      
       statusRequest=StatusRequest.failure;
    }
    }
    update();
    }

  }

  @override
  goToSignUp() {
    Get.offNamed(AppRoute.signUp);
  }

  @override
  void onInit() {
   
    email = TextEditingController();
    password = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  goToForgetPassword() {
    Get.toNamed(AppRoute.forgetPassword);
  }
}