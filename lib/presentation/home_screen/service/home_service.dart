import 'package:clone_app/repository/helper/api_helper.dart';

class HomeService {
  static Future<dynamic> fetchData() async {
    try {
      var resData = ApiHelper.getData(endPoint: "images/allimage/");
      return resData;
    } catch (e) {
      print(e);
    }
  }
}
