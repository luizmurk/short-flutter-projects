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
    SampleUserModel? user;
    try {
      var res = await _dio.get(url);
      user = SampleUserModel.fromJson(res.data["data"]);
    } on DioError catch (e) {
      if (e.response != null) {
        print('Dio error!');
      } else {
        print('Error sending request!');
        print(e.message);
      }
    }
    return user;
  }

  Future<SampleUserPostModel?> makePostUserRequest(
      {id, SampleUserPostModel? data}) async {
    var url = "${envConf.getBASEURL2}${postUser}";
    var jsonData = data?.toJson();
    SampleUserPostModel? user;

    try {
      var res = await _dio.post(url, data: jsonData);
      print(res);
      user = SampleUserPostModel.fromJson(res.data);
    } on DioError catch (e) {
      if (e.response != null) {
        print('Dio error!');
      } else {}
    }
    print(user);
    return user;
  }

  Future<SampleUserPostModel?> makePutUserRequest(
      {id, SampleUserPostModel? data}) async {
    var url = "${envConf.getBASEURL2}${putUser}";
    var jsonData = data?.toJson();
    SampleUserPostModel? user;

    try {
      var res = await _dio.put(url, data: jsonData);
      print(res);
      user = SampleUserPostModel.fromJson(res.data);
    } on DioError catch (e) {
      if (e.response != null) {
      } else {}
    }
    print(user);
    return user;
  }

  Future<SampleUserPostModel?> makePatchUserRequest(
      {id, SampleUserPostModel? data}) async {
    var url = "${envConf.getBASEURL2}${putUser}";
    var jsonData = data?.toJson();
    SampleUserPostModel? user;

    try {
      var res = await _dio.patch(url, data: jsonData);
      print(res);
      user = SampleUserPostModel.fromJson(res.data);
    } on DioError catch (e) {
      if (e.response != null) {
      } else {}
    }
    print(user);
    return user;
  }

  Future<bool> makeDeleteUserRequest({id}) async {
    var url = "${envConf.getBASEURL2}${deleteUser}${id}";

    try {
      var res = await _dio.delete(url);
      print("success");
    } on DioError catch (e) {
      print("failed");
      if (e.response != null) {
      } else {}
    }
    return true;
  }
}
