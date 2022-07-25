import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:esig/app/model/post.dart';
import 'package:mobx/mobx.dart';

part 'service_controller.g.dart';

class ServiceController = _ServiceControllerBase with _$ServiceController;

abstract class _ServiceControllerBase with Store {
  final String URL_BASE = "https://jsonplaceholder.typicode.com/photos";
  var dio = Dio();
  @observable
  List<Post> posts = [];

  @action
  Future<List<Post>> callAPI() async {
    try {
      var response = await dio.getUri(Uri.parse(URL_BASE));
      posts = (response.data as List).map((e) => Post.fromJson(e)).toList();
      return posts;
    } finally {
      // dio.close();
    }
  }
}
