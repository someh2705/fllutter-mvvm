import 'package:get/get.dart';
import 'package:mvvm/core/init_binidng.dart';
import 'package:mvvm/core/repository/movie_repository.dart';
import 'package:mvvm/screen/app_pages.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  get next => () => Get.toNamed(AppRoutes.home);
}
