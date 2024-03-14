import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_states.dart';
import 'package:weather_app/views/homeview.dart';

void main() {
  runApp(const weatherapp());
}

class weatherapp extends StatelessWidget {
  const weatherapp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child: Builder(
        builder: (context) => BlocBuilder<GetWeatherCubit, WeatherStates>(
          builder: (context, state) {
            return MaterialApp(
              theme: ThemeData(
                  primarySwatch: getThemeColor(
                BlocProvider.of<GetWeatherCubit>(context)
                    .weatherModel
                    ?.weathercondition,
              )),
              debugShowCheckedModeBanner: false,
              home: homeview(),
            );
          },
        ),
      ),
    );
  }

 
}
 MaterialColor getThemeColor(String? condition) {
    if (condition == null) {
      return Colors.blue;
    }
    if (condition == 'Sunny' || condition == 'Clear') {
      return Colors.orange;
    } else if (condition == 'Partly cloudy') {
      return Colors.grey;
    } else if (condition == 'Cloudy') {
      return Colors.grey;
    } else if (condition == 'Overcast') {
      return Colors.grey;
    } else if (condition == 'Mist') {
      return Colors.grey;
    } else if (condition == 'Patchy rain possible') {
      return Colors.lightBlue;
    } else if (condition == 'Patchy snow possible') {
      return Colors.lightBlue;
    } else if (condition == 'Patchy sleet possible') {
      return Colors.lightBlue;
    } else if (condition == 'Patchy freezing drizzle possible') {
      return Colors.lightBlue;
    } else if (condition == 'Thundery outbreaks possible') {
      return Colors.deepPurple;
    } else if (condition == 'Blowing snow') {
      return Colors.lightBlue;
    } else if (condition == 'Blizzard') {
      return Colors.lightBlue;
    } else if (condition == 'Fog') {
      return Colors.grey;
    } else if (condition == 'Freezing fog') {
      return Colors.grey;
    } else if (condition == 'Patchy light drizzle') {
      return Colors.lightBlue;
    } else if (condition == 'Light drizzle') {
      return Colors.lightBlue;
    } else if (condition == 'Freezing drizzle') {
      return Colors.lightBlue;
    } else if (condition == 'Heavy freezing drizzle') {
      return Colors.lightBlue;
    } else if (condition == 'Patchy light rain') {
      return Colors.lightBlue;
    } else if (condition == 'Light rain') {
      return Colors.lightBlue;
    } else if (condition == 'Moderate rain at times') {
      return Colors.lightBlue;
    } else if (condition == 'Moderate rain') {
      return Colors.lightBlue;
    } else if (condition == 'Heavy rain at times') {
      return Colors.lightBlue;
    } else if (condition == 'Heavy rain') {
      return Colors.lightBlue;
    } else if (condition == 'Light freezing rain') {
      return Colors.lightBlue;
    } else if (condition == 'Moderate or heavy freezing rain') {
      return Colors.lightBlue;
    } else if (condition == 'Light sleet') {
      return Colors.lightBlue;
    } else if (condition == 'Moderate or heavy sleet') {
      return Colors.lightBlue;
    } else if (condition == 'Patchy light snow') {
      return Colors.lightBlue;
    } else if (condition == 'Light snow') {
      return Colors.lightBlue;
    } else if (condition == 'Patchy moderate snow') {
      return Colors.lightBlue;
    } else if (condition == 'Moderate snow') {
      return Colors.lightBlue;
    } else if (condition == 'Patchy heavy snow') {
      return Colors.lightBlue;
    } else if (condition == 'Heavy snow') {
      return Colors.lightBlue;
    } else if (condition == 'Ice pellets') {
      return Colors.lightBlue;
    } else if (condition == 'Light rain shower') {
      return Colors.lightBlue;
    } else if (condition == 'Moderate or heavy rain shower') {
      return Colors.lightBlue;
    } else if (condition == 'Torrential rain shower') {
      return Colors.lightBlue;
    } else if (condition == 'Light sleet showers') {
      return Colors.lightBlue;
    } else if (condition == 'Moderate or heavy sleet showers') {
      return Colors.lightBlue;
    } else if (condition == 'Light snow showers') {
      return Colors.lightBlue;
    } else if (condition == 'Moderate or heavy snow showers') {
      return Colors.lightBlue;
    } else if (condition == 'Light showers of ice pellets') {
      return Colors.lightBlue;
    } else if (condition == 'Moderate or heavy showers of ice pellets') {
      return Colors.lightBlue;
    } else if (condition == 'Patchy light rain with thunder') {
      return Colors.deepPurple;
    } else if (condition == 'Moderate or heavy rain with thunder') {
      return Colors.deepPurple;
    } else if (condition == 'Patchy light snow with thunder') {
      return Colors.deepPurple;
    } else if (condition == 'Moderate or heavy snow with thunder') {
      return Colors.deepPurple;
    } else {
      return Colors.blue;
    }
  }
