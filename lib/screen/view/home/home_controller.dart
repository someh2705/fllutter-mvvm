import 'package:get/get.dart';
import 'package:mvvm/core/repository/movie_repository.dart';
import 'package:mvvm/screen/view/home/home_state.dart';

class HomeController extends GetxController with StateMixin<HomeState> {
  HomeController({required this.movieRepository});

  final MovieRepository movieRepository;

  @override
  void onInit() {
    movieRepository.fetchMovieList().then((value) {
      change(HomeState(movieList: value), status: RxStatus.success());
    });
    super.onInit();
  }
}
