// ignore_for_file: prefer_const_constructors

import 'package:enn_bee/routes/pageRoutes.dart';
import 'package:enn_bee/utils/stylesheet/values/strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'utils/stylesheet/values/values.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      //translations: Strings(), // your translations
      locale:
          Locale('fr', 'CH'), // translations will be displayed in that locale
      fallbackLocale: Locale('fr', 'CH'),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      getPages: UserRoutes,
    );
  }
}
