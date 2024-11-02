import 'package:deliveryapp/core/class/curd.dart';
import 'package:deliveryapp/data/apiconnect/apiconnect.dart';

class SignupData{
  Crud curd;
 SignupData (this.curd);
  postdata(String username,String password,String email,String phone)async{
    var response=await curd.postData(Apiconnect.hostconnectsignup, {
      "username":username,
      "email":email,
      "phone":phone,
      "password":password,
    });
    return response.fold((l)=>l ,(r)=>r);
  }

}
