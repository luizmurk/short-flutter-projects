import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class EnvironmentConfig extends GetxController {
  Enum env;
  EnvironmentConfig({
    required this.env,
  });

  String get getBASEURL {
    String BASEURL = "";
    String BASEURL2 = "";
    switch (env) {
      case Env.test:
        BASEURL = 'https://reqres.in/api';
        break;
      case Env.prod:
        BASEURL = 'https://reqres.in/api';
        break;
      case Env.dev:
        BASEURL = 'https://reqres.in/api';
        break;
    }
    return BASEURL;
  }

  String get getBASEURL2 {
    String BASEURL = "";
    switch (env) {
      case Env.test:
        BASEURL = 'https://jsonplaceholder.typicode.com';
        break;
      case Env.prod:
        BASEURL = 'https://jsonplaceholder.typicode.com';
        break;
      case Env.dev:
        BASEURL = 'https://jsonplaceholder.typicode.com';
        break;
    }
    return BASEURL;
  }
}

void boot({Enum env = Env.test}) {
  EnvironmentConfig envConf = Get.put(EnvironmentConfig(env: env));
}

enum Env {
  test,
  prod,
  dev,
}
