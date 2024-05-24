

// import 'package:api/feature/data/model/weather_model.dart';
// import 'package:api/feature/data/service/app_uri.dart';

// class WeatherService{
//   // 1) Серверден маалыматты алып келуу учун асихрондуу функция тузуу
//    Future<BirModel?> fetchdata()async{
// // 2) http пакетиндеги get методун алып келуу 
// final res = await http.get(Uri.parse(AppUri.apiUri));
//  // 3) response ко келген маалыматты текшеруу
//  if (res.statusCode == 200) {
//    print(res.body);
//   }
//  return null;
//  }
// }

import 'package:api/feature/data/model/weather_model.dart';
import 'package:api/feature/data/service/app_uri.dart';
import 'package:dio/dio.dart';

class WeatherRepo{ // бир class  тузуп атабыз
  Future <WeatherModel?> fetchData ()async{ // бир метод
     final dio = Dio();// Dio пакетин бир озгормого байлап атабыз
     final res = await dio.get(AppUri.apiUri); // gметодун колдонобуз, жана бир озгормого байлайбыз
     if (res.statusCode == 200) {// шарт жазабыз 
       final weather = WeatherModel(
        id: res.data['weather'][0]['id'], 
       main: res.data['weather'][0]['main'], 
       desc: res.data['weather'][0]['description'], 
       icon: res.data['weather'][0]['icon']);
       return weather;
     }
     return null;
  }
}
