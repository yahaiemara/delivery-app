import 'package:deliveryapp/core/class/curd.dart';
import 'package:deliveryapp/data/apiconnect/apiconnect.dart';

class NotificationData{
  Crud curd;
  NotificationData(this.curd);
  getData(String userid)async{
    var response=await curd.postData(Apiconnect.notification,{"userid":userid});
    return response.fold((l)=>l ,(r)=>r);
  }

}
