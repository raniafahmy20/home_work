import 'package:dio/dio.dart';
import 'package:weather_app/models/weather_model.dart';

class WeatherService {
  final Dio dio;
  const WeatherService({required this.dio});
  final String baseUrl = 'http://api.weatherapi.com/v1';
  final String myKey = '168066d0cc554b66bd6130841252411';

  Future<WeatherModel> getWeatherData(String country) async {
    try {
      final response = await dio.get(
        '$baseUrl/forecast.json?key=$myKey&q=$country&days=1&aqi=no&alerts=no',
      );
      return WeatherModel.fromJson(response.data);
    } on DioException catch (e) {
      final String errorMessage =
          e.response?.data['error']['message'] ?? 'error try late again';
      throw Exception(errorMessage);
    } catch (e) {
      throw Exception(e);
    }
  }
}
