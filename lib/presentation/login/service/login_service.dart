import 'package:clone_app/repository/helper/api_helper.dart';

class LoginService {
  static Future<dynamic> postLogin(Map<String, String> data) async{
    try {
      var resData = ApiHelper.postData(endPoint: "login/", body: data);
      return resData;
    } catch (e) {
      print(e);
    }
  }
}
