import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/weatherCubit/weather_cubit_states.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/services/weather_service.dart';

class GetWeatherCubit extends Cubit<WeatherCubitStates> {
  GetWeatherCubit() : super(NoWeatherDataState());
  WeatherModel? weatherModel;
  getWeatherData(String city) async {
    try {
      weatherModel = await WeatherService(dio: Dio()).getWeatherData(city);
      emit(WeatherSuccDataState(weatherModel: weatherModel!));
    } catch (e) {
      emit(WeatherFailDataState());
    }
  }
}
