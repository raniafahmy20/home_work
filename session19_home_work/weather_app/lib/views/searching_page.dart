import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/weatherCubit/get_weather_cubit.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});
  @override
  Widget build(BuildContext context) {
    String city = '';
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
        ),
        title: Text('Search a City', style: TextStyle(color: Colors.white)),
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.only(right: 20, left: 20),
        child: Center(
          child: TextField(
            onSubmitted: (value) async {
              
              var getWeather = BlocProvider.of<GetWeatherCubit>(context);
              getWeather.getWeatherData(value);
              Navigator.pop(context);
            },
            onChanged: (value) {
              city = value;
            },
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 30,
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.green),
              ),
              labelText: 'Search',
              hintText: 'Enter city name',
              suffixIcon: IconButton(
                onPressed: () {
                  var getWeather = BlocProvider.of<GetWeatherCubit>(context);
                  getWeather.getWeatherData(city);
                  Navigator.pop(context);
                },
                icon: Icon(Icons.search),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
