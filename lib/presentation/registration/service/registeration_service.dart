import 'dart:developer';

import 'package:clone_app/repository/helper/api_helper.dart';

class RegistrationService {
  static Future<dynamic> postRegister(Map<String, Object> data) async {
    try {
      var resData =
          await ApiHelper.postData(endPoint: "/accounts/register/", body: data);
      return resData;
    } catch (e) {
      log("$e");
    }
  }
}
