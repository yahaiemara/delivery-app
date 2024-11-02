import 'package:deliveryapp/core/class/statusrequest.dart';
import 'package:deliveryapp/core/functions/handlingData.dart';
import 'package:deliveryapp/data/remote/test_data.dart';
import 'package:get/get.dart';

class TestController extends GetxController{
  TestData testData=TestData(Get.find());
   List data=[];
   late StatusRequest statusRequest;
   getData()async{
    statusRequest=StatusRequest.loading;
    var response=await testData.getData();
    statusRequest=handlingData(response);
    if(StatusRequest.success==statusRequest){
    if(response['status']=='success'){
      data.addAll(response['data']);
    }else{
      statusRequest=StatusRequest.failure;
    }
    }
    update();
   }
   @override
  void onInit() {
    getData();
    super.onInit();
  }
}