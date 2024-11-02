import 'package:deliveryapp/core/class/curd.dart';
import 'package:deliveryapp/data/apiconnect/apiconnect.dart';

class OfferData{
  Crud curd;
  OfferData(this.curd);
  getData()async{
    var response=await curd.postData(Apiconnect.offeritems, {});
    return response.fold((l)=>l ,(r)=>r);
  }

}
