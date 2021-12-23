import 'package:get/get.dart';
import 'package:mvvm/core/repository/movie_repository.dart';
import 'package:mvvm/screen/app_pages.dart';
import 'package:mvvm/screen/view/home/home.dart';
import 'package:mvvm/screen/view/home/home_controller.dart';
import 'package:mvvm/screen/view/splash/splash.dart';
import 'package:mvvm/screen/view/splash/splash_controller.dart';

class AppPages {
  static const initial = AppRoutes.splash;

  static final routes = [
    GetPage(
        name: AppRoutes.splash,
        page: () => const SplashPage(),
        binding: BindingsBuilder<SplashController>(() {
          Get.put(SplashController());
        })),
    GetPage(
        name: AppRoutes.home,
        page: () => const HomePage(),
        binding: BindingsBuilder<HomeController>(() {
          Get.put(HomeController(movieRepository: Get.put(MovieRepository())));
        })),
  ];
}
