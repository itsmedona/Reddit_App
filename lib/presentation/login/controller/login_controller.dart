import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:clone_app/core/app_utils.dart';
import 'package:clone_app/presentation/login/service/login_service.dart';

import '../../../app_config/app_config.dart';
import '../../about_you_screen/view/about_you_screen.dart';

class LoginController extends ChangeNotifier {
  late SharedPreferences sharedPreferences;
  void onlogin(BuildContext context,
      {required String uname, required String pass}) {
    var data = {"username": uname, "password": pass};
    LoginService.postLogin(data).then((value) {
      if (value["status"] == 1) {
        AppUtils.oneTimeSnackBar("Success",
            context: context, bgColor: Colors.green);
        storeRecivedData(value);
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(builder: (context) => AboutyouScreen()),
            (route) => false);
      } else {
        AppUtils.oneTimeSnackBar("Failed",
            context: context, bgColor: Colors.red);
      }
      notifyListeners();
    });
  }

  storeRecivedData(resData) async {
    log("storeRecivedData>>resData");
    sharedPreferences = await SharedPreferences.getInstance();
    String storeData = json.encode(resData);
    sharedPreferences.setString(AppConfig.loginData, storeData);
  }
}
