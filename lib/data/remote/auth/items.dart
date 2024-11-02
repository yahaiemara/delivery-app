import 'package:deliveryapp/core/class/curd.dart';
import 'package:deliveryapp/data/apiconnect/apiconnect.dart';


class ItemsData{
  Crud curd;
  ItemsData(this.curd);
  getData(String id,String usersid)async{
    var response=await curd.postData(Apiconnect.items, {"id":id,"userid":usersid});
    return response.fold((l)=>l ,(r)=>r);
  }

}
