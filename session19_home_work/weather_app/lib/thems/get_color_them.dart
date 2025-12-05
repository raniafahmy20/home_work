import 'package:flutter/material.dart';

MaterialColor getWeatherColor(String? condition) {
  if (condition == null) return Colors.blue;
  switch (condition) {
    // ☀️ Sunny
    case "Sunny":
    case "Clear":
      return Colors.amber;

    // 🌤 Partly Cloudy
    case "Partly cloudy":
      return Colors.orange;

    // ☁️ Cloudy / Overcast
    case "Cloudy":
    case "Overcast":
      return Colors.blueGrey;

    // 🌫 Mist / Fog
    case "Mist":
    case "Fog":
    case "Freezing fog":
      return Colors.grey;

    // 🌧 Light Rain
    case "Patchy light drizzle":
    case "Light drizzle":
    case "Patchy light rain":
    case "Light rain":
    case "Light rain shower":
      return Colors.lightBlue;

    // 🌧 Moderate / Heavy Rain
    case "Moderate rain at times":
    case "Moderate rain":
    case "Heavy rain at times":
    case "Heavy rain":
    case "Moderate or heavy rain shower":
    case "Torrential rain shower":
      return Colors.blue;

    // ⚡ Thunder
    case "Thundery outbreaks possible":
    case "Patchy light rain with thunder":
    case "Moderate or heavy rain with thunder":
      return Colors.deepPurple;

    // ❄️ Snow
    case "Patchy light snow":
    case "Light snow":
    case "Patchy moderate snow":
    case "Moderate snow":
    case "Patchy heavy snow":
    case "Heavy snow":
    case "Light snow showers":
    case "Moderate or heavy snow showers":
      return Colors.cyan;

    // 🧊 Sleet / Ice
    case "Patchy sleet possible":
    case "Light sleet":
    case "Moderate or heavy sleet":
    case "Light sleet showers":
    case "Moderate or heavy sleet showers":
    case "Ice pellets":
    case "Light showers of ice pellets":
    case "Moderate or heavy showers of ice pellets":
      return Colors.indigo;

    // Default
    default:
      return Colors.teal;
  }
}
