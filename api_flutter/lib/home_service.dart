import 'package:api_flutter/home_model.dart';
import 'package:dio/dio.dart';

class BirClass{
  Future fetchData () async {
  final dio = Dio();
   final res = await dio.get('https://api.openweathermap.org/data/2.5/weather?lat=44.34&lon=10.99&appid=2dadb31a8f4956aa5426d59e3884dde5');
   if (res.statusCode == 200 && res.statusCode == 201) {
     final name = BirModel(
      base: res.data['base'], 
     visibility:res.data.visibility, 
     dt: res.data.dt, 
     timezone:res.data.timezone, 
     id: res.data.id, 
     name: res.data.name, 
     cod: res.data.cod);
     
   }
  }
}