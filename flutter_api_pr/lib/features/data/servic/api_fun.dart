import 'package:dio/dio.dart' ;
import 'package:flutter_api_pr/features/data/model/model.dart';

class BirClass {
  final dio = Dio();

  Future<Model?> fetchdt() async {
    final response = await dio.get('https://api.github.com/users');
    if (response.statusCode == 200) {
      
      final studendts = 
      Model(
        login: response.data![17]["login"],
        id: response.data![17]['id'],
        url: response.data![17]["avatar_url"],
      );
      return studendts;
    }return null;
  }
}

