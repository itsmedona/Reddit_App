import 'package:clone_app/core/app_utils.dart';
import 'package:clone_app/presentation/login/view/login.dart';
import 'package:clone_app/presentation/registration/service/registeration_service.dart';
import 'package:flutter/material.dart';

class RegistrationController extends ChangeNotifier {
  void onRegister(BuildContext context,
      {required String uname,
      required String fname,
      required String mail,
      required String phone,
      required String date,
      required String pass}) async {
    var data = {
      "username": uname,
      "first_name": fname,
      "email": mail,
      "phone": phone,
      "date_of_birth": date,
      "password": pass
    };
    RegistrationService.postRegister(data).then((value) {
      if (value["status"] == 1) {
        var message = value["message"];
        AppUtils.oneTimeSnackBar(message,
            context: context, bgColor: Colors.green);
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => LoginScreen()));
      } else {
        AppUtils.oneTimeSnackBar(
          "Failed to Register",
          context: context,
          bgColor: Colors.red,
        );
      }
      notifyListeners();
    });
  }
}
