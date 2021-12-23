import 'package:get/get.dart';
import 'package:mvvm/core/model/movie.dart';

class ApiService extends GetxService {
  getMovieList() async {
    var movieList = await Future.delayed(
        const Duration(seconds: 1),
        () => Iterable<int>.generate(1000)
            .map((e) => MovieInfo(movieName: "Hello World! #${e+1}"))
            .toList());

    return movieList;
  }
}
