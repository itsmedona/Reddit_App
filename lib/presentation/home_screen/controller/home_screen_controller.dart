// class Post {
//   final int id;
//   final String title;
//   final String body;

//   Post({required this.id, required this.title, required this.body});

//   factory Post.fromJson(Map<String, dynamic> json) {
//     return Post(
//       id: json['id'],
//       title: json['title'],
//       body: json['body'],
//     );
//   }
// }
import 'dart:developer';

import 'package:clone_app/core/app_utils.dart';
import 'package:clone_app/presentation/home_screen/model/home_model.dart';
import 'package:clone_app/presentation/home_screen/service/home_service.dart';
import 'package:flutter/material.dart';

class HomeController extends ChangeNotifier {
  bool isLoading = false;
  HomeModel homeModel = HomeModel();

  void fetchHomeData(BuildContext context) {
    isLoading = true;
    notifyListeners();
    HomeService.fetchData().then((value) {
      log("${value["status"]}");
      log("${value["data"]}");
      if (value["status"] == 1) {
        homeModel = HomeModel.fromJson(value);
        isLoading = false;
      } else {
        AppUtils.oneTimeSnackBar("Something Went Wrong", context: context);
      }
      notifyListeners();
    });
  }
}
