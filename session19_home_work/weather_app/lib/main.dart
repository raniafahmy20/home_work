import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/weatherCubit/get_weather_cubit.dart';
import 'package:weather_app/cubits/weatherCubit/weather_cubit_states.dart';
import 'package:weather_app/thems/get_color_them.dart';

import 'package:weather_app/views/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child: BlocBuilder<GetWeatherCubit, WeatherCubitStates>(
        builder: (context, state) {
          final cubit = context.watch<GetWeatherCubit>();
          return MaterialApp(
            theme: ThemeData(
              useMaterial3: false,
              primarySwatch: getWeatherColor(
                cubit.weatherModel?.stateOfWeather,
              ),
            ),
            debugShowCheckedModeBanner: false,
            home: HomePage(),
          );
        },
      ),
    );
  }
}
