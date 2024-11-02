import 'package:deliveryapp/core/class/curd.dart';
import 'package:deliveryapp/data/apiconnect/apiconnect.dart';

class DeliveryData{
  Crud curd;
  DeliveryData(this.curd);
  getDataPending()async{
    var response=await curd.postData(Apiconnect.pendingdelivery, {});
    return response.fold((l)=>l ,(r)=>r);
  }
 accepted(String deliveryid)async{
    var response=await curd.postData(Apiconnect.accepteddelivery, {"deliveryid":deliveryid});
    return response.fold((l)=>l ,(r)=>r);
  }
   approved(String orderid,String userid,String deliveryid)async{
    var response=await curd.postData(Apiconnect.approvedelivery, {"orderid":orderid,"userid":userid,"deliveryid":deliveryid});
    return response.fold((l)=>l ,(r)=>r);
  }
 done(String orderid,String userid)async{
    var response=await curd.postData(Apiconnect.archivedelivery, {"orderid":orderid,"userid":userid});
    return response.fold((l)=>l ,(r)=>r);
  }
  
 getData(String email,String password)async{
    var response=await curd.postData(Apiconnect.deliverapp, {"email":email,"password":password});
    return response.fold((l)=>l ,(r)=>r);
  }
}
