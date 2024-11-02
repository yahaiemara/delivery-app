import 'package:deliveryapp/core/class/curd.dart';
import 'package:deliveryapp/data/apiconnect/apiconnect.dart';

class PendingData{
  Crud curd;
  PendingData(this.curd);
  getData(String userid)async{
    var response=await curd.postData(Apiconnect.pentingorder, {
      "userid":userid
    });
    return response.fold((l)=>l ,(r)=>r);
  }
    deleteData(String orderid)async{
    var response=await curd.postData(Apiconnect.deleteorder, {"orderid":orderid});
    return response.fold((l)=>l ,(r)=>r);
  }
}
