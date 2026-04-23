import 'dart:convert';

import '../models/location_model.dart';
import '../models/weather_model.dart';
import '../providers/weather_provider.dart';


class WeatherRepository {
  final WeatherProvider provider;
  WeatherRepository(this.provider);

  Future<WeatherModel> getWeather(String city) async {
    final response = await provider.getWeather(city);
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body)["current"] as Map<String,dynamic>;
      return WeatherModel.fromJson(data);
    } else {
      throw Exception("Failed to load weather");
    }
  }

  Future<LocationModel> getCity(String city) async {
    final response = await provider.getCity(city);
    if (response.statusCode == 200) {
      final List data = jsonDecode(response.body);
      return LocationModel.fromJson(data[0] as Map<String,dynamic>);
      // return data.map((json) => LocationModel.fromJson(json as Map<String,dynamic>)).toList();
    }
    else{
      throw Exception("Incorrect city name");
    }
  }
}