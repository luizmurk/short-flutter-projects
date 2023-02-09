// ignore_for_file: prefer_const_constructors, file_names, avoid_unnecessary_containers
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../utils/stylesheet/values/values.dart';
import '../controllers/sampleControllerFIleWithGetx.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  dynamic argumentData = Get.arguments;
  final SampleController sampleC = Get.find();
  @override
  Widget build(BuildContext context) {
    SizeConfig.inited;
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(child: Text(argumentData["name"])),
        ],
      ),
    ));
  }
}
