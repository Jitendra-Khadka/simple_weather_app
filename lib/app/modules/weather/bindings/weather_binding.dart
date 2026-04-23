import 'package:get/get.dart';
import 'package:weather_app/app/data/providers/weather_provider.dart';
import 'package:weather_app/app/data/repository/weather_repository.dart';
import 'package:weather_app/app/modules/weather/controllers/weather_controller.dart';

class WeatherBinding extends Bindings{

  @override
  void dependencies(){
    Get.put(
      WeatherController(
        WeatherRepository(
          WeatherProvider()
        )
      )
    );
  }
}