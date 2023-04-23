import 'package:enn_bee/utils/stylesheet/values/values.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class CalculatorControls extends GetxController {
  var count = 0.obs;
  var name = "will".obs;
  var age = 25.obs;
  increment() => count++;

  changeMode() {
    print("changing mode");
    AppColors.init(Mode.light);
  }
}
