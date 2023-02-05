import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

import '../shared/Sample/screens/sampleScreen.dart';
import '../shared/Sample/screens/secondSamplePageShowingTransferOfData.dart';

List<GetPage<dynamic>> routes = [
  GetPage(name: '/', page: () => const DefaultStatelessPage()),
  GetPage(name: '/second', page: () => const SecondPage()),
];
