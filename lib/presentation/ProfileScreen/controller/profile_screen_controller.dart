import 'dart:convert';
import 'dart:developer';

import 'package:clone_app/core/app_utils.dart';
import 'package:clone_app/presentation/ProfileScreen/model/user_profile_model.dart';
import 'package:clone_app/presentation/ProfileScreen/service/profile_service.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../app_config/app_config.dart';

class ProfileController extends ChangeNotifier {
  UserProfileModel userProfileModel = UserProfileModel();
  bool isLoadingProfile = false;
  late SharedPreferences sharedPreferences;
  var data;

  fetchProfile(context) {
    isLoadingProfile = true;
    notifyListeners();
    log("ProfileController -> fetchProfile()");
    getUSerData().then((data) {
      ProfileService.fetchProfile(data).then((value) {
        if (value["status"] == 1) {
          userProfileModel = UserProfileModel.fromJson(value);
          isLoadingProfile = false;
        } else {
          AppUtils.oneTimeSnackBar("error", context: context);
        }
      });
    });
  }

 Future<String> getUSerData() async {
    sharedPreferences = await SharedPreferences.getInstance();
    var storedData;
    storedData = sharedPreferences.getString(AppConfig.loginData);
    data = jsonDecode(storedData);
    log("storedData -> $data");
    log("username -> ${data["username"]}");
    return data["username"];
  }
}
