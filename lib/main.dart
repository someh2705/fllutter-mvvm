import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvm/core/init_binidng.dart';
import 'package:mvvm/screen/app_routes.dart';

void main() => runApp(const LaunchedApp());

class LaunchedApp extends StatelessWidget {
  const LaunchedApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: AppPages.initial,
      initialBinding: InitBindings(),
      getPages: AppPages.routes,
    );
  }
}
