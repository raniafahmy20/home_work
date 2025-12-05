import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/weatherCubit/get_weather_cubit.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/thems/get_color_them.dart';

class WeatherView extends StatelessWidget {
  const WeatherView({super.key});

  @override
  Widget build(BuildContext context) {
    WeatherModel weatherModel = BlocProvider.of<GetWeatherCubit>(
      context,
    ).weatherModel!;
    bool there = weatherModel.image.contains('https:');
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: AlignmentGeometry.topCenter,
          end: AlignmentGeometry.bottomCenter,
          colors: [
            getWeatherColor(
              BlocProvider.of<GetWeatherCubit>(
                context,
              ).weatherModel!.stateOfWeather,
            ),
            getWeatherColor(
              BlocProvider.of<GetWeatherCubit>(
                context,
              ).weatherModel!.stateOfWeather,
            )[100]!,
            getWeatherColor(
              BlocProvider.of<GetWeatherCubit>(
                context,
              ).weatherModel!.stateOfWeather,
            )[400]!,
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(right: 20, left: 20, top: 150),
        child: Column(
          spacing: 10,
          children: [
            Text(
              weatherModel.countryName,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            Text(
              'updated at : ${weatherModel.date.hour}:${weatherModel.date.minute}',
              style: TextStyle(fontSize: 15),
            ),
            Row(
              children: [
                CachedNetworkImage(
                  imageUrl: there == true
                      ? weatherModel.image
                      : 'https:' + weatherModel.image,
                  placeholder: (context, url) => CircularProgressIndicator(),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
                Spacer(),
                Text(
                  '${weatherModel.temp.round()}',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('maxTemp : ${weatherModel.maxTemp.round()}'),
                    Text('minTemp : ${weatherModel.minTemp.round()}'),
                  ],
                ),
              ],
            ),
            Text(
              weatherModel.stateOfWeather,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
