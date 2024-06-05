
import 'package:api_dio/features/data/models/new_model.dart';
import 'package:api_dio/features/presention/constants/api_const.dart';
import 'package:dio/dio.dart';

class NewService{
  Future<NewModel?>  fetchData ([String? name]) async{
    final dio = Dio();
    await Future.delayed(
      const Duration(seconds: 2),
    );
    final res = await dio.get(ApiConst.address(name?? 'osh'));
    if (res.statusCode == 200) {
    final newModel = NewModel(
      id: res.data['weather'][0]['id'],
        main: res.data['weather'][0]['main'],
        description: res.data['weather'][0]['description'],
        city: res.data['name'],
    );
    return newModel;
    }
    return null; 
  }
}