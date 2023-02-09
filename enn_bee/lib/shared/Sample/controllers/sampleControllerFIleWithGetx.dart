import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class SampleController extends GetxController {
  var count = 0.obs;
  var name = "will".obs;
  var age = 25.obs;
  increment() => count++;

  changeName(newName) {
    print(name);
    name(newName);
    Get.snackbar(
      "New Name",
      "Display the message here",
      colorText: Colors.white,
      backgroundColor: Colors.lightBlue,
      icon: const Icon(Icons.add_alert),
    );
  }
}
