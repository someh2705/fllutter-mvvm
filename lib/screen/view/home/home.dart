import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvm/screen/view/home/home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: controller.obx(
          (state) => ListView.builder(
                itemBuilder: (context, index) =>
                    Text(state?.movieList[index].movieName ?? ''),
                itemCount: state?.movieList.length ?? 0,
              ),
          onLoading: const SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Center(
              child: CircularProgressIndicator(),
            ),
          )),

    );
  }
}
