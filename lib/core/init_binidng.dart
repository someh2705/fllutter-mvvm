import 'package:get/get.dart';
import 'package:mvvm/core/service/api_service.dart';

class InitBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ApiService());
  }
}
