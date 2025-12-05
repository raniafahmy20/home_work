import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/weatherCubit/get_weather_cubit.dart';
import 'package:weather_app/cubits/weatherCubit/weather_cubit_states.dart';

import 'package:weather_app/views/searching_page.dart';
import 'package:weather_app/widgets/no_weather_data.dart';
import 'package:weather_app/widgets/weather_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back, color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return SearchPage();
                  },
                ),
              );
            },
            icon: Icon(Icons.search, color: Colors.white),
          ),
        ],
        title: Text('Weather', style: TextStyle(color: Colors.white)),
      ),
      body: BlocBuilder<GetWeatherCubit, WeatherCubitStates>(
        builder: (context, state) {
          if (state is NoWeatherDataState) {
            return NoWeatherData();
          } else if (state is WeatherSuccDataState) {
            return WeatherView();
          } else {
            return Text('errrrrrror');
          }
        },
      ),
    );
  }
}
