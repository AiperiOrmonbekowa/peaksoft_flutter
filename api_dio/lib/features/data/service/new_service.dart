
import 'package:api_dio/features/data/models/new_model.dart';
import 'package:dio/dio.dart';

class NewService{
  Future<NewModel?>  fetchData () async{
    final dio = Dio();
    final res = await dio.get('https://rickandmortyapi.com/api/episode/');
    if (res.statusCode == 200) {
    final newModel = NewModel(
      name: res.data['results'][0]['name'], 
      airDate: res.data['results'][0]['air_date'],
      episode: res.data['results'][0]['episode'],
      id: res.data['results'][1]['id']
    );
    return newModel;
    }
    return null; 
  }
}