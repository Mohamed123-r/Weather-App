import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherService {
  final Dio dio;
  final String baseUrl = 'https://api.weatherapi.com/v1';
  final String apiKey = 'd782ab32b4524c98bc6193248230210';

  WeatherService({required this.dio});

  Future<WeatherModel?> gitCurrentWeather({required String cityName}) async {
    try {
      Response response =
          await dio.get('$baseUrl/forecast.json?key=$apiKey&q=$cityName');

      WeatherModel weatherModel = WeatherModel.fromJson(response.data);
      return weatherModel;
    } catch (e) {
      return null;
    }
  }
}
