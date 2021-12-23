import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvm/screen/view/splash/splash_controller.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: TextButton(
              onPressed: controller.next, child: const Text('Button')),
        ),
      ),
    );
  }
}
