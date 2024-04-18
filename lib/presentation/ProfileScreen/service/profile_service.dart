import 'dart:developer';

import 'package:clone_app/core/app_utils.dart';
import 'package:clone_app/repository/helper/api_helper.dart';

class ProfileService {
  static Future<dynamic> fetchProfile(String name) async {
    try {
      var decodedData = await ApiHelper.getData(
          endPoint: "accounts/$name/", header: ApiHelper.getApiHeader(access: await AppUtils.getAccessKey()));
      return decodedData;
    } catch (e) {
      log("$e");
    }
  }
}
