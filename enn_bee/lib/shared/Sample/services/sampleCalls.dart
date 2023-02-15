// ignore_for_file: unnecessary_brace_in_string_interps, prefer_const_declarations, unused_local_variable, avoid_print

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:enn_bee/config/environments.dart';
import 'package:enn_bee/server-side/apiEndpoints.dart';
import 'package:enn_bee/shared/Sample/models/sampleCallsModel.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:http/http.dart' as http;

import '../../../server-side/sharedServices.dart';

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
    SampleUserModel? user;
    var url = "${envConf.getBASEURL}${getUser}$id";
    var res = await InternetServices.initialiseGetRequest(url: url);
    user = SampleUserModel.fromJson(res["data"]);
    return user;
  }

  Future<SampleUserPostModel?> makePostUserRequest(
      {id, SampleUserPostModel? data}) async {
    var url = "${envConf.getBASEURL2}${postUser}";
    var jsonData = data?.toJson();
    SampleUserPostModel? user;
    var res =
        await InternetServices.initialisePostRequest(url: url, data: jsonData);
    print(res);
    user = SampleUserPostModel.fromJson(res);
    print(user);
    return user;
  }

  Future<SampleUserPostModel?> makePutUserRequest(
      {id, SampleUserPostModel? data}) async {
    var url = "${envConf.getBASEURL2}${putUser}";
    var jsonData = data?.toJson();
    SampleUserPostModel? user;

    var res =
        await InternetServices.initialisePutRequest(url: url, data: jsonData);
    print(res);
    user = SampleUserPostModel.fromJson(res);

    print(user);
    return user;
  }

  Future<SampleUserPostModel?> makePatchUserRequest(
      {id, SampleUserPostModel? data}) async {
    var url = "${envConf.getBASEURL2}${putUser}";
    var jsonData = data?.toJson();
    SampleUserPostModel? user;

    var res =
        await InternetServices.initialisePatchRequest(url: url, data: jsonData);
    print(res);
    user = SampleUserPostModel.fromJson(res);

    print(user);
    return user;
  }

  Future<bool> makeDeleteUserRequest({id}) async {
    var url = "${envConf.getBASEURL2}${deleteUser}${id}";

    var res = await InternetServices.initialiseDeleteRequest(url: url);
    print("success");

    return true;
  }
}
