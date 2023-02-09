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
  var loading = false.obs;
  var name = "will".obs;

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
    loading(true);
    apiC.makeGetUserRequest(id: id).then((value) {
      loading(false);
      print(value?.firstName);
      return name(value?.firstName);
    });
  }
}
