import "package:flutter/material.dart";

import "../../../data/models/location_model.dart";
import "../../../data/models/weather_model.dart";

class WeatherInfo extends StatelessWidget {
  const WeatherInfo({super.key,
    required this.location,
    required this.weather
  });
  final LocationModel location;
  final WeatherModel weather;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text("Temp : ${weather.temp} degree Celsius"),
        Text("Condition : ${weather.condition}"),
        Text("Temp : ${location.name}, ${location.country}"),

      ],
    );
  }
}
