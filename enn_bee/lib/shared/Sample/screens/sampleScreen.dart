// ignore_for_file: avoid_unnecessary_containers, library_private_types_in_public_api, prefer_const_constructors

import 'package:enn_bee/shared/Sample/controllers/sampleControllerFIleWithGetx.dart';
import 'package:enn_bee/utils/stylesheet/values/values.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DefaultStatelessPage extends StatelessWidget {
  const DefaultStatelessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final SampleController sampleC = Get.put(SampleController());

    SizeConfig().init(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          // ignore: sort_child_properties_last
          child: Icon(Icons.add),
          onPressed: sampleC.increment),
      appBar: AppBar(
        title: Text("home".tr),
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
                    child: Text("Get User"),
                    onPressed: () {
                      sampleC.getUser(id: 2);
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
