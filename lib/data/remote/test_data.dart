import 'package:deliveryapp/core/class/curd.dart';
import 'package:deliveryapp/data/apiconnect/apiconnect.dart';

class TestData{
  Crud curd;
  TestData(this.curd);
  getData()async{
    var response=await curd.postData(Apiconnect.test, {});
    return response.fold((l)=>l ,(r)=>r);
  }

}
