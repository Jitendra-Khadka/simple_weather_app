import "package:flutter/cupertino.dart";
import "package:get/get.dart";
import "package:weather_app/app/data/models/location_model.dart";
import "package:weather_app/app/data/repository/weather_repository.dart";
import "../../../data/models/weather_model.dart";

class WeatherController extends GetxController{

  WeatherController(this.repo);

  final WeatherRepository repo;
  var weatherCondition = WeatherModel(
    condition: "sunny",
    temp: 10,
    icon: "https://png.pngtree.com/element_our/20190601/ourmid/pngtree-sunny-icon-image_1366080.jpg"
  ).obs;
  var currentLocation = LocationModel(name: "Kathmandu", country: "Nepal").obs;
  final TextEditingController searchController = TextEditingController();

  @override
  void onInit(){
    getWeather("kathmandu");
    super.onInit();
  }

  Future<void>getWeather(String defaultCity)async{
    String cityFromTextField = searchController.text.trim();
    String city = cityFromTextField.isNotEmpty ? cityFromTextField: defaultCity;
    weatherCondition.value = await repo.getWeather(city);
    currentLocation.value = await repo.getCity(city);
    searchController.clear();
  }

  @override
  void onClose(){
    searchController.dispose();
    super.onClose();
  }

}