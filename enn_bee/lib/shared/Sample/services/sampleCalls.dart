// ignore_for_file: unnecessary_brace_in_string_interps, prefer_const_declarations, unused_local_variable

import 'package:dio/dio.dart';
import 'package:enn_bee/config/environments.dart';
import 'package:enn_bee/server-side/apiEndpoints.dart';
import 'package:enn_bee/shared/Sample/models/sampleCallsModel.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class ApiServicesSample extends GetxController {
  static EnvironmentConfig envConf = Get.find<EnvironmentConfig>();
  static final _token = "";
  static final Dio _dio = Dio();
  static var headers;
  ApiServicesSample() {
    if (_token == "") {
      headers = {
        "Content-Type": "application/json",
      };
    } else {
      headers = {
        "Content-Type": "application/json",
        "Accept": "application/json",
        'Authorization': 'JWT $_token',
      };
    }
  }

  Future<SampleUserModel?> makeGetUserRequest({id}) async {
    var url = "${envConf.getBASEURL}${getUser}$id";
    url;
    SampleUserModel? user;
    try {
      var res = await _dio.get(url);
      user = SampleUserModel.fromJson(res.data["data"]);
    } on DioError catch (e) {
      // The request was made and the server responded with a status code
      // that falls out of the range of 2xx and is also not 304.
      if (e.response != null) {
        print('Dio error!');
        print('STATUS: ${e.response?.statusCode}');
        print('DATA: ${e.response?.data}');
        print('HEADERS: ${e.response?.headers}');
      } else {
        // Error due to setting up or sending the request
        print('Error sending request!');
        print(e.message);
      }
    }
    print(user);
    return user;
  }
}
