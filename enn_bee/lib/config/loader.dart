import 'package:enn_bee/config/loader.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class LoaderConfig extends GetxController {
  Enum loader;
  LoaderConfig({
    required this.loader,
  });

  Widget get getLoader {
    Widget LOADER = Text("loading...");
    switch (loader) {
      case Loader.api:
        LOADER = Text("loading STILL...");
        break;
    }
    return LOADER;
  }
}

enum Loader {
  api,
  prod,
  dev,
}
