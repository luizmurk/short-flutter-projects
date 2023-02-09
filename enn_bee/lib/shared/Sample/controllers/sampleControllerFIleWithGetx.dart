// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:enn_bee/config/environments.dart';
import 'package:enn_bee/shared/Sample/models/sampleCallsModel.dart';
import 'package:enn_bee/shared/Sample/services/sampleCalls.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class SampleController extends GetxController {
  EnvironmentConfig envConf = Get.find<EnvironmentConfig>();
  final ApiServicesSample apiC = Get.put(ApiServicesSample());
  late SampleUserModel? user;
  var count = 0.obs;
  var name = "will".obs;
  var age = 25.obs;
  var baseUrl;
  increment() => count++;

  changeName(newName) {
    envConf.getBASEURL;
    name(newName);
    Get.snackbar(
      "New Name",
      "Display the message here",
      colorText: Colors.white,
      backgroundColor: Colors.lightBlue,
      icon: const Icon(Icons.add_alert),
    );
  }

  getUser({id}) async {
    apiC.makeGetUserRequest(id: id).then((value) {
      print(value?.firstName);
      return name(value?.firstName);
    });
  }
}
