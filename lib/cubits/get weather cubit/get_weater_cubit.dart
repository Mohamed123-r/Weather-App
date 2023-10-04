import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get%20weather%20cubit/get_weather_states.dart';
import 'package:weather_app/models/weather_model.dart';

import '../../services/weather-service.dart';

class GetWeatherCubit extends Cubit<WeatherState> {
  GetWeatherCubit() : super(InitialState());

  getWeather({required String cityName}) async {
    try {
      WeatherModel weatherModel =
          await WeatherService(dio: Dio()).gitCurrentWeather(
        cityName: cityName,
      );
      emit(WeatherLoadedState());
    } catch (e) {
      emit(WeatherFailureState());
    }
  }
}
