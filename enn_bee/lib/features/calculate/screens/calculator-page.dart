// ignore_for_file: avoid_unnecessary_containers, library_private_types_in_public_api, prefer_const_constructors

import 'package:enn_bee/shared/Sample/controllers/sampleControllerFIleWithGetx.dart';
import 'package:enn_bee/utils/stylesheet/values/values.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/calculator-controls.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({Key? key}) : super(key: key);

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  @override
  Widget build(BuildContext context) {
    final CalculatorControls sampleC = Get.put(CalculatorControls());
    SizeConfig().init(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          // ignore: sort_child_properties_last
          child: Icon(Icons.add),
          onPressed: sampleC.increment),
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: Text("NormBars".tr),
      ),
      body: Obx(
        () => Center(
          child: Container(
            //color: AppColors.grey,
            width: SizeConfig.widthOf(50),
            height: SizeConfig.heightOf(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(sampleC.name.string),
                ElevatedButton(
                    child: Text("Calculate Here"),
                    onPressed: () {
                      sampleC.changeMode();
                      setState(() {});
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
