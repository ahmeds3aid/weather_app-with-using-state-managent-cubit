import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/main.dart';
import 'package:weather_app/models/weather_model.dart';

class weatherinfobody extends StatelessWidget {
  const weatherinfobody({super.key});

  @override
  Widget build(BuildContext context) {
    Weathermodel weatherModel =
        BlocProvider.of<GetWeatherCubit>(context).weatherModel!;
    return Center(
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          getThemeColor(weatherModel.weathercondition),
          getThemeColor(weatherModel.weathercondition)[300]!,
          getThemeColor(weatherModel.weathercondition)[50]!,
        ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                weatherModel.cityname,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                ),
              ),
              Text(
                'updated at ${weatherModel.date.hour}:${weatherModel.date.minute}',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.network(
                    "https:${weatherModel.image}",
                  ),
                  Text(
                    weatherModel.temp.toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                    ),
                  ),
                  Column(
                    children: [
                      Text('Maxtemp:${weatherModel.maxtemp.round()}'),
                      Text('Mintemp:${weatherModel.mintemp.round()}'),
                    ],
                  ),
                ],
              ),
              Text(
                weatherModel.weathercondition,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

