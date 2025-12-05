class WeatherModel {
  final String countryName;
  final DateTime date;
  final double temp;
  final String stateOfWeather;
  final double maxTemp;
  final double minTemp;
  final String image;

  const WeatherModel({
    required this.temp,
    required this.stateOfWeather,
    required this.countryName,
    required this.date,
    required this.maxTemp,
    required this.minTemp,
    required this.image,
  });
  factory WeatherModel.fromJson(json) {
    return WeatherModel(
      countryName: json["location"]["name"],
      date: DateTime.parse(json["current"]["last_updated"]),
      stateOfWeather: json["current"]['condition']['text'],
      image: json["current"]['condition']['icon'],
      maxTemp: json["forecast"]['forecastday'][0]['day']['maxtemp_c'],
      minTemp: json["forecast"]['forecastday'][0]['day']['mintemp_c'],
      temp: json["forecast"]['forecastday'][0]['day']["avgtemp_c"],
    );
  }
}
