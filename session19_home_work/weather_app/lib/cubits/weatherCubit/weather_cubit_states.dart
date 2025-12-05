import 'package:weather_app/models/weather_model.dart';

class WeatherCubitStates {}

class NoWeatherDataState extends WeatherCubitStates {}

class WeatherSuccDataState extends WeatherCubitStates {
  WeatherModel weatherModel;
  WeatherSuccDataState({required this.weatherModel});
}

class WeatherFailDataState extends WeatherCubitStates {}
