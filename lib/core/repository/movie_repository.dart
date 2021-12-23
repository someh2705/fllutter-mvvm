import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:mvvm/core/model/movie.dart';
import 'package:mvvm/core/service/api_service.dart';
import 'package:mvvm/screen/view/home/home_state.dart';

class MovieRepository extends GetxService {
  Future<List<MovieInfo>> fetchMovieList() async {
    var movieList = await Get.find<ApiService>().getMovieList();

    return movieList;
  }
}
